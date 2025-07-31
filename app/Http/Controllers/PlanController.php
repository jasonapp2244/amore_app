<?php

namespace App\Http\Controllers;


use App\Http\Controllers\Controller;
use App\Models\Plan;
use Illuminate\Http\JsonResponse;

class PlanController extends Controller
{
    public function index(): JsonResponse
    {
        $plans = Plan::all();

        return response()->json([
            'status' => true,
            'message' => 'Plans fetched successfully',
            'data' => $plans
        ]);
    }
}
