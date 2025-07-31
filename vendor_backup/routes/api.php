
<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\QrScanController;
use App\Http\Controllers\UserQrController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\UserBlockController;
use App\Http\Controllers\WpUserSyncController;
use App\Http\Controllers\StripePaymentController;


Route::get('wp-users/sync', [WpUserSyncController::class, 'syncUsersFromWP']);
Route::post('/login-with-otp', [AuthController::class, 'login']);
Route::post('/verify-otp', [AuthController::class, 'verifyOtp']);
Route::post('/resend-otp', [AuthController::class, 'resendOtp']);

Route::middleware('auth:sanctum')->group(function () {

    Route::get('/user', [AuthController::class, 'user']);

    Route::get('/get_profile', [UserController::class, 'getUser']);
    Route::post('/update_profile', [UserController::class, 'updateProfile']);

    # QR code generate
    Route::get('/qr-token', [UserQrController::class, 'getToken']);
    Route::post('/scan-qr', [QrScanController::class, 'scan']);
    Route::get('/linked-users', [QrScanController::class, 'linkedUsers']);


    # Messages
    Route::post('/messages/send', [MessageController::class, 'send']);
    Route::get('/messages/{userId}', [MessageController::class, 'fetchConversation']);
    Route::post('/messages/seen', [MessageController::class, 'markAsSeen']);
    Route::post('/messages/delete', [MessageController::class, 'delete']);
    Route::post('/block-user', [UserBlockController::class, 'block']);
    Route::post('/unblock-user', [UserBlockController::class, 'unblock']);


    // Route::post('/stripe/message-upgrade', [StripePaymentController::class, 'purchaseMessages']);
    // Route::post('/stripe/ring-exchange', [StripePaymentController::class, 'ringExchange']);

    Route::post('/logout', [AuthController::class, 'logout']);
});
