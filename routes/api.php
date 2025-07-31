<?php

use Pusher\Pusher;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;
use App\Http\Controllers\AuthController;

use App\Http\Controllers\PlanController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Broadcast;
use App\Http\Controllers\QrScanController;
use App\Http\Controllers\UserQrController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\UserBlockController;
use App\Http\Controllers\WpUserSyncController;
use App\Http\Controllers\UserSupportsController;
use App\Http\Controllers\StripePaymentController;


Route::get('/test', function () {
    return response()->json(['message' => 'API is working']);
});

Route::get('/clear-cache', function () {
    Artisan::call('optimize:clear');
    return "Cache cleared successfully!";
});

Route::get('wp-users/sync', [WpUserSyncController::class, 'syncUsersFromWP']);

Route::post('/login-with-otp', [AuthController::class, 'login']);
Route::post('/verify-otp', [AuthController::class, 'verifyOtp']);
Route::post('/resend-otp', [AuthController::class, 'resendOtp']);


Route::post('/broadcasting/auth', function (Request $request) {
    if (!$request->user()) {
        return response()->json(['message' => 'Unauthenticated.'], 401);
    }

    $pusher = new Pusher(
        config('broadcasting.connections.pusher.key'),
        config('broadcasting.connections.pusher.secret'),
        config('broadcasting.connections.pusher.app_id'),
        config('broadcasting.connections.pusher.options')
    );

    $auth = $pusher->socket_auth(
        $request->input('channel_name'),
        $request->input('socket_id')
    );

    return response()->json([
        'auth' => json_decode($auth)->auth,
        'shared_secret' => config('broadcasting.connections.pusher.secret')
    ]);
})->middleware('auth:sanctum');


// All protected routes
Route::middleware('auth:sanctum')->group(function () {

    // User info
    Route::get('/user', [AuthController::class, 'user']);
    Route::post('/logout', [AuthController::class, 'logout']);

    // Profile
    Route::get('/get_profile', [UserController::class, 'getUser']);
    Route::post('/update_profile', [UserController::class, 'updateProfile']);

    // QR system
    Route::get('/qr-token', [UserQrController::class, 'getToken']);
    Route::post('/scan-qr', [QrScanController::class, 'scan']);
    Route::get('/linked-users', [QrScanController::class, 'linkedUsers']);

    // Messages
    Route::post('/messages/send', [MessageController::class, 'send']);
    Route::get('/messages/{userId}', [MessageController::class, 'fetchConversation']);
    Route::post('/messages/seen', [MessageController::class, 'markAsSeen']);
    Route::post('/messages/delete', [MessageController::class, 'delete']);
    Route::get('/remaining/messages', [MessageController::class, 'remainingMessages']);

    // Route::get('/reaminig-messages',[MessageController::class,'remainingMessages']);

    // asa method bna day jis memaing message response ager limint khatam ho jay to mesage ay your limint end

    // Block/unblock
    Route::post('/block-user', [UserBlockController::class, 'block']);
    Route::post('/unblock-user', [UserBlockController::class, 'unblock']);

    // Support query
    Route::post('/message_query', [UserSupportsController::class, 'messageQuery']);

    // Payments
    // Route::post('/stripe/message-upgrade', [StripePaymentController::class, 'purchaseMessages']);
    // Route::post('/stripe/ring-exchange', [StripePaymentController::class, 'ringExchange']);
    Route::post('/create-intent', [StripePaymentController::class, 'createPaymentIntent']);


    Route::get('/plans', [PlanController::class, 'index']);


    Route::post('/create-message-intent', [StripePaymentController::class, 'createMessageIntent']);
    Route::post('/create-ring-intent', [StripePaymentController::class, 'createRingIntent']);
    Route::post('/confirm-payment', [StripePaymentController::class, 'confirmPaymentSuccess']);
});
