<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;

class UserController extends Controller
{

    public function getUser(Request $request)
    {
        try {
            $user = Auth::user();
            if (!$user) {
                return response()->json([
                    'status' => false,
                    'message' => 'Unauthorized access. User not authenticated.',
                    'data' => null
                ], 401);
            }

            return response()->json([
                'status' => true,
                'message' => 'User data fetched successfully.',
                'user' => $user,
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'An error occurred while fetching the user.',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function updateProfile(Request $request)
    {
        $user = Auth::user();

        $validated = $request->validate([
            'first_name' => 'nullable|string|max:255',
            'last_name' => 'nullable|string|max:255',
            'profile_image' => 'nullable|max:2048',
        ]);

        $user->first_name = $validated['first_name'] ?? $user->first_name;
        $user->last_name = $validated['last_name'] ?? $user->last_name;



        if ($request->hasFile('profile_image')) {
            $file = $request->file('profile_image');


            if ($user->profile_image) {
                Storage::delete($user->profile_image);
            }

            $firstName = explode(' ', $user->first_name)[0];


            $timestamp = time();


            $extension = $file->getClientOriginalExtension();


            $fileName = $firstName . '_' . $timestamp . '.' . $extension;


            $path = $file->storeAs('public/profile_image', $fileName);


            $user->profile_image = $fileName;
        }

        $user->save();

        return response()->json([
            'status' => true,
            'message' => 'Profile updated successfully.',
            'user' => $user,
        ]);
    }
}
