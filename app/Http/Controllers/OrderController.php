<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    public function viewOrder(){
        $cartItems = DB::table('carts')
            ->join('products','products.product_id','=','carts.product_id')
            ->join('images','carts.product_id','=','images.product_id')
            ->join('sell_products','carts.product_id','=','sell_products.product_id')
            ->select('products.product_name','products.product_code','images.url','sell_products.prices','carts.cart_id','carts.quantity')
            ->where('carts.user_id','=',Auth::id())
            ->get();
        $category = DB::table('categories')->take(1)->get();
        $userData = DB::table('users')
            ->where('id','=',Auth::id())
            ->get();
        $charges = DB::table('address')
            ->join('users','users.address','=','address.address_dt')
            ->select('address.fee')
            ->take(1)->get();
        return view('client/orderDetail',compact('cartItems','category','userData','charges'));
    }

    //
}
