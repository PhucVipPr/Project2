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

Route::get('/', function () {
    return redirect('/login');
});

Route::get('home',function (){
    return view('site/home');
});



//Login
Route::get('/login',[\App\Http\Controllers\LoginController::class,'viewLogin']);
Route::post('/login',[\App\Http\Controllers\LoginController::class,'login']);
Route::post('/logout',[\App\Http\Controllers\LoginController::class,'logout']);

//Admin
Route::get('/admin/product/index',[\App\Http\Controllers\AdminController::class,'viewProduct']);
Route::get('/admin/category/index',[\App\Http\Controllers\AdminController::class,'viewCategory']);
Route::get('/admin/home',[\App\Http\Controllers\AdminController::class,'viewHome']);

//Product
Route::get('/admin/product/add_product',[\App\Http\Controllers\AdminProductController::class,'create']);
Route::post('/admin/product/add_product',[\App\Http\Controllers\AdminProductController::class,'store']);
Route::get('/admin/product/{product_id}/edit',[\App\Http\Controllers\AdminProductController::class,'edit']);
Route::put('/admin/product/{product_id}/edit',[\App\Http\Controllers\AdminProductController::class,'update']);


//Category
Route::get('/admin/category/add_category',[\App\Http\Controllers\AdminCategory::class,'create']);
Route::post('/admin/category/add_category',[\App\Http\Controllers\AdminCategory::class,'store']);
Route::get('/admin/category/{cate_id}/edit',[\App\Http\Controllers\AdminCategory::class,'edit']);
Route::put('/admin/category/{cate_id}/edit',[\App\Http\Controllers\AdminCategory::class,'update']);
Route::delete('/admin/category/{category}/delete',[\App\Http\Controllers\AdminCategory::class,'destroy']);

//Client
Route::get('/client/home',[\App\Http\Controllers\ClientController::class,'viewClient']);
//Tat ca san pham
Route::get('/client/home/category',[\App\Http\Controllers\ClientController::class,'viewCategory']);
//Xem chi tiet san pham
Route::get('/client/home/product/{product_id}',[\App\Http\Controllers\ClientController::class,'show']);


