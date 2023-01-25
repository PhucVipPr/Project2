<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{

    //
    function viewHome(){
        return view('admin/home');
    }

    function viewOrder(){
        $orderItems = DB::table('orders')
            ->join('users','users.id','=','orders.user_id')
            ->where('orders.order_status','=',null)
            ->select('orders.*','users.name')
            ->get();
        return view('admin/order/index',compact('orderItems'));
    }

    function orderDetail(){
        $orderItems = DB::table('products')
            ->join('order_details','products.product_id','=','order_details.product_id')
            ->join('sell_products','order_details.product_id','=','sell_products.product_id')
            ->join('images','images.product_id','=','products.product_id')
            ->select('order_details.*','order_details.price','images.url','products.product_name','products.product_code')
            ->get();
        return view('admin/order/details',compact('orderItems'));
    }

    function viewUser(){
        $users = DB::table('users')
            ->where('isAdmin','=',0)
            ->get();
        return view('admin/users/index',compact('users'));
    }

    function viewProduct(){
        $products = DB::table('products')
            ->join('images', 'products.product_id', '=', 'images.product_id')
            ->join('categories', 'products.cate_id', '=', 'categories.cate_id')
            ->join('sell_products', 'products.product_id', '=', 'sell_products.product_id')
            ->select('products.product_id','products.product_code','products.product_name','products.product_info',
                'images.url','categories.cate_id', 'categories.cate_name','sell_products.prices')
            ->get();
        return view('admin/product/index',['products'=>$products]);
    }

    function viewCategory(){
        $categories = DB::table('categories')->get();
        return view('admin/category/index',['categories'=>$categories]);
    }

    function logout(Request $request){
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/');
    }


}
