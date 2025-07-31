<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Plan;
use App\Models\Payment;
use Stripe\Stripe;
use Stripe\PaymentIntent;
use Illuminate\Support\Facades\Mail;
use App\Mail\PaymentSuccessUserMail;
use App\Mail\PaymentSuccessAdminMail;

class StripePaymentController extends Controller
{
    public function __construct()
    {
        Stripe::setApiKey(config('services.stripe.secret'));
    }

    /**
     * Create PaymentIntent dynamically from plan_slug
     */
    public function createPaymentIntent(Request $request)
    {
        try {
            $user = auth()->user();

            // Validate request
            $request->validate([
                'plan_slug' => 'required'
            ]);

            $plan = Plan::where('slug', $request->plan_slug)->first();

            $paymentFor = $plan->messages > 0 ? 'messages' : 'ring_exchange';

            $intent = PaymentIntent::create([
                'amount' => $plan->amount * 100,
                'currency' => 'usd',
                'payment_method_types' => ['card'],
                'metadata' => [
                    'user_id' => $user->id,
                    'plan_slug' => $plan->slug,
                    'payment_for' => $paymentFor,
                ],
            ]);

            return response()->json([
                'status' => true,
                'clientSecret' => $intent->client_secret
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Payment intent creation failed: ' . $e->getMessage()
            ], 500);
        }
    }

    /**
     * Confirm Stripe payment and update records
     */
    public function confirmPaymentSuccess(Request $request)
    {
        try {
            $paymentIntent = PaymentIntent::retrieve($request->payment_intent_id);

            if ($paymentIntent->status !== 'succeeded') {
                return response()->json([
                    'status' => false,
                    'message' => 'Payment not completed'
                ], 400);
            }

            $userId = $paymentIntent->metadata->user_id ?? null;
            $planSlug = $paymentIntent->metadata->plan_slug ?? null;
            $paymentFor = $paymentIntent->metadata->payment_for ?? null;

            $user = User::find($userId);
            $plan = Plan::where('slug', $planSlug)->first();

            if (!$user || !$plan) {
                return response()->json([
                    'status' => false,
                    'message' => 'User or plan not found in metadata.'
                ], 404);
            }

            // Apply plan benefits
            if ($paymentFor === 'messages') {
                $user->increment('message_count', $plan->messages);
            } elseif ($paymentFor === 'ring_exchange') {

                // $user->increment('ring_count', $plan->rings);
            }

            $user->is_paid = true;
            $user->save();

            // Save payment record
            $payment = Payment::create([
                'user_id' => $user->id,
                'plan_id' => $plan->id,
                'payment_intent_id' => $paymentIntent->id,
                'payment_for'=>$paymentFor,
                'amount_paid' => $plan->amount,
                'payment_status' => $paymentIntent->status,
            ]);

            // Send confirmation emails
            Mail::to($user->email)->send(new PaymentSuccessUserMail($user, $plan, $payment));
            Mail::to(config('mail.admin_email'))->send(new PaymentSuccessAdminMail($user, $plan, $payment));

            return response()->json([
                'status' => true,
                'message' => 'Payment confirmed successfully',
                'payment_status' => $paymentIntent->status
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Payment confirmation failed: ' . $e->getMessage()
            ], 500);
        }
    }
}
