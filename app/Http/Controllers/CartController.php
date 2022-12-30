<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class CartController extends Controller
{
    public function viewCart(){
        $cartItems = Cart::where('user_id',Auth::id())->get();
        return view('client/cartList',compact('cartItems'));
    }

    public function addCart(Request $request,$product_id){

        if(Auth::check()) {
            $user =auth()->user();
            $products = DB::table('products')
                ->join('images', 'products.product_id', '=', 'images.product_id')
                ->join('categories', 'products.cate_id', '=', 'categories.cate_id')
                ->join('sell_products', 'products.product_id', '=', 'sell_products.product_id')
                ->select('products.product_id','products.product_code','products.product_name','products.product_info',
                    'images.url','categories.cate_id', 'categories.cate_name','sell_products.prices')
                ->get();
            $cart = new Cart();
            $cart->user_id=$user->id;
            $cart->product_id=$products->product_id;
            $cart->quantity=$request->quantity;
            $cart->save();
            return redirect()->back();
        }else{
            return redirect('login');
        }
    }
}
