
<?php
namespace App\Http\Controllers;
use App\Models\Subscription;
use App\Models\RingExchange;
use Illuminate\Support\Facades\Mail;
use App\Mail\PaymentConfirmationUser;
use App\Mail\PaymentNotificationAdmin;
use Stripe\Stripe;
use Stripe\Charge;
use Illuminate\Http\Request;

// public function purchaseMessages(Request $request)
// {
//     $user = auth()->user();

//     $amount = 5.00; // $5 for 5000 messages
//     $messageCount = 5000;

//     try {
//         Stripe::setApiKey(config('services.stripe.secret'));

//         $charge = Charge::create([
//             'amount' => $amount * 100, // cents
//             'currency' => 'usd',
//             'source' => $request->token, // sent from frontend
//             'description' => "Message Pack Purchase - User #{$user->id}"
//         ]);

//         // Save subscription
//         $subscription = Subscription::create([
//             'user_id' => $user->id,
//             'messages_added' => $messageCount,
//             'amount_paid' => $amount,
//             'payment_method' => 'stripe',
//             'payment_status' => 'paid',
//             'subscription_type' => 'message',
//             'purchased_at' => now(),
//         ]);

//         // Update user message count
//         $user->increment('message_limit', $messageCount);

//         // Send emails
//         Mail::to($user->email)->send(new PaymentConfirmationUser('message', $messageCount, $amount));
//         Mail::to(config('mail.admin_email'))->send(new PaymentNotificationAdmin($user, 'message', $messageCount, $amount));

//         return response()->json(['success' => true, 'message' => 'Message Pack purchased successfully.']);
//     } catch (\Exception $e) {
//         return response()->json(['success' => false, 'error' => $e->getMessage()], 500);
//     }
// }

// public function ringExchange(Request $request)
// {
//     $user = auth()->user();

//     $amount = 5.90;

//     try {
//         Stripe::setApiKey(config('services.stripe.secret'));

//         $charge = Charge::create([
//             'amount' => $amount * 100,
//             'currency' => 'usd',
//             'source' => $request->token,
//             'description' => "Ring Exchange Payment - User #{$user->id}"
//         ]);

//         RingExchange::create([
//             'user_id' => $user->id,
//             'amount_charged' => $amount,
//             'payment_method' => 'stripe',
//             'payment_status' => 'paid',
//             'exchanged_at' => now(),
//         ]);

//         // Email notifications
//         Mail::to($user->email)->send(new PaymentConfirmationUser('ring', 0, $amount));
//         Mail::to(config('mail.admin_email'))->send(new PaymentNotificationAdmin($user, 'ring', 0, $amount));

//         return response()->json(['success' => true, 'message' => 'Ring exchange completed successfully.']);
//     } catch (\Exception $e) {
//         return response()->json(['success' => false, 'error' => $e->getMessage()], 500);
//     }
// }
