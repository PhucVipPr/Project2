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
Route::get('/admin/product/categories',[\App\Http\Controllers\AdminController::class,'viewCategory']);
Route::get('/admin/home',[\App\Http\Controllers\AdminController::class,'viewHome']);

//Product
Route::get('/admin/product/add_product',[\App\Http\Controllers\AdminProductController::class,'addProduct']);
Route::post('/admin/product/add_product',[\App\Http\Controllers\AdminProductController::class,'saveProduct']);

//Category
Route::get('/admin/product/add_category',[\App\Http\Controllers\AdminCategory::class,'addCategory']);
Route::post('/admin/product/add_category',[\App\Http\Controllers\AdminCategory::class,'saveCategory']);

//Client
Route::get('/client/home',[\App\Http\Controllers\AdminController::class,'viewClient']);


