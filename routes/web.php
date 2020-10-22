<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// HOME PAGE
Route::get('/', function () {
    $posts = DB::table('posts')->get();
    return view('index')->with('posts', $posts);
});

// CONTACT PAGE
Route::get('/contact', function(){
    return view('contact');
});

// ABOUT PAGE
Route::get('/about', function(){
    return view('about');
});