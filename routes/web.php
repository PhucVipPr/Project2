<?php

use App\Http\Controllers\AdminCategory;
use App\Http\Controllers\ClientController;
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
    return redirect('/client/home');
});

Route::get('home',function (){
    return view('site/home');
});



//Login
//giao dien dang nhap
Route::get('/login',[\App\Http\Controllers\LoginController::class,'viewLogin']);
//dang nhap
Route::post('/login',[\App\Http\Controllers\LoginController::class,'login']);
//dang xuat
Route::post('/logout',[\App\Http\Controllers\LoginController::class,'logout']);


//Register
//dang ky
Route::get('/register',[\App\Http\Controllers\RegisterController::class,'register']);
Route::post('/register',[\App\Http\Controllers\RegisterController::class,'storeaccount']);


//Admin
//xem san pham
Route::get('/admin/product/index',[\App\Http\Controllers\AdminController::class,'viewProduct']);
//xem cate
Route::get('/admin/category/index',[\App\Http\Controllers\AdminController::class,'viewCategory']);
//xem trang chu
Route::get('/admin/home',[\App\Http\Controllers\AdminController::class,'viewHome']);
//xem nguoi dung
Route::get('/admin/users/index',[\App\Http\Controllers\AdminController::class,'viewUser']);
//xem chi tiet order
Route::get('/admin/users/orderDetail',[\App\Http\Controllers\AdminController::class,'viewOrder']);
//xem order
Route::get('/admin/order/index',[\App\Http\Controllers\OrderController::class,'viewOrder']);


//Product
//tim kiem san pham
Route::get('/admin/product/search',[\App\Http\Controllers\AdminProductController::class,'search']);
//giao dien tao san pham moi
Route::get('/admin/product/add_product',[\App\Http\Controllers\AdminProductController::class,'create']);
//luu san pham
Route::post('/admin/product/add_product',[\App\Http\Controllers\AdminProductController::class,'store']);
//sua san pham
Route::get('/admin/product/{product_id}/edit',[\App\Http\Controllers\AdminProductController::class,'edit']);
//cap nhat san pham
Route::put('/admin/product/{product_id}/edit',[\App\Http\Controllers\AdminProductController::class,'update']);


//Category
//tim kiem cate
Route::get('/admin/category/search',[AdminCategory::class,'search']);
//giao dien tao cate moi
Route::get('/admin/category/add_category',[AdminCategory::class,'create']);
//luu cate
Route::post('/admin/category/add_category',[AdminCategory::class,'store']);
//giao dien sua cate
Route::get('/admin/category/{cate_id}/edit',[AdminCategory::class,'edit']);
//cap nhat cate
Route::put('/admin/category/{cate_id}/edit',[AdminCategory::class,'update']);
//xoa cate
Route::delete('/admin/category/{category}/delete',[AdminCategory::class,'destroy']);


//Client
Route::get('/client/home',[ClientController::class,'viewClient']);
Route::get('/client/info',[ClientController::class,'viewInfo']);
Route::get('/client/{id}/edit',[ClientController::class,'editInfo']);
Route::put('/client/{id}/edit',[ClientController::class,'update']);



//Cac trang danh muc ben Client
Route::get('/client/category/mass',[ClientController::class,'viewMass']);
Route::get('/client/category/whey',[ClientController::class,'viewWhey']);
Route::get('/client/category/BCAAsEAAs',[ClientController::class,'viewBCAAsEAAs']);
Route::get('/client/category/PreworkoutCreatine',[ClientController::class,'viewPreworkoutCreatine']);
Route::get('/client/category/vitamin',[ClientController::class,'viewVitamin']);
Route::get('/client/category/burnFat',[ClientController::class,'viewBurnFat']);


//Tat ca san pham
Route::get('/client/home/category',[ClientController::class,'viewCategory']);
//Xem chi tiet san pham
Route::get('/client/home/product/{product_id}/{cate_name}',[ClientController::class,'show']);
//Tim kiem
Route::get('/client/home/search',[ClientController::class,'searchInfo']);


//Gio hang
//xem gio hang
Route::get('/client/cartList',[\App\Http\Controllers\CartController::class,'viewCart']);
Route::post('/client/cart/{id}',[\App\Http\Controllers\CartController::class,'addCart']);
Route::delete('/client/cart/{id}/delete',[\App\Http\Controllers\CartController::class,'delete']);
Route::post('/client/cart/{id}/update',[\App\Http\Controllers\CartController::class,'update']);

//Order
Route::get('/client/orderDetail',[\App\Http\Controllers\OrderController::class,'viewOrder']);
Route::post('client/check_Out',[\App\Http\Controllers\OrderController::class,'checkOut']);


//Tin tức
Route::get('/client/home/tintuc',[ClientController::class,'news']);
