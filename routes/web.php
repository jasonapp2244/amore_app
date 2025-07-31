<?php
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;
Route::get('/clear-cache', function () {
    Artisan::call('optimize:clear');
    return "Cache cleared successfully!";
});