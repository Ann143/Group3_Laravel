<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\OrderController;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

//User Route
Route::post('/user/create',[UserController::class , 'store']);
Route::post('/user/login',[Usercontroller::class, 'login']);
Route::get('/user/getuser',[UserController::class, 'getUser']);
Route::get('/user/userById/{id}',[UserController::class, 'getUserById']);
Route::delete('/user/userDelete/{id}',[UserController::class,'destroy']);
Route::put('/user/updateUser/{id}',[UserController::class,'updateUser']);

// Route::group(['middleware'=>'auth:sanctum'], function(){
//     Route::get('/user/logout',[UserController::class, 'logout']);

// });

Route::get('/users/{user}/carts/id', [CartController::class, 'getCartId']);
Route::get('/users/carts/{cart}' , [CartController::class, 'getCartProducts']);
Route::post('/orders/users/{user}', [CartController::class, 'checkout']);


Route::post('/users/{user}/carts', [CartController::class, 'store']); // ADD TO CART




//Product Route
Route::post('/product/create',[ProductController::class, 'createProduct']);
Route::get('/product/getAllProducts',[ProductController::class, 'getAllProducts']);
Route::get('/product/getProductById/{id}',[ProductController::class, 'getProductById']);
Route::delete('/product/deleteProduct/{id}',[ProductController::class, 'destroyProduct']);
Route::put('/product/updateProduct/{id}',[ProductController::class, 'updateProduct']);

//Order RToute
Route::get('/order',[OrderController::class, 'getOrders']);