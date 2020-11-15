<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//Route::group(['prefix' => 'v1' , 'middleware'=> 'auth:api'], function () {
Route::group(['prefix' => 'v1'], function () {
    Route::get('/get-available-trips', [BookingController::class,'getBusFilters']);
    Route::post('/book-seat', [BookingController::class,'postReserveTicket']);

});