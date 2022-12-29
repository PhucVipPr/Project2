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
        $cartItems = Cart::where('cart_id',Auth::id())->get();
        return view('client/cartList',compact('cartItems'));
    }

    public function addCart(Request $request,$product_id){
        if(Auth::id()) {
            $user =auth()->user();
            $products=Product::find($product_id);
            $cart = new cart;
            $cart->id=$user->id;
            $cart->product_id=$products->product_id;
            $cart->quantity=$request->quantity;
            $cart->save();
            return redirect()->back();
        }else{
            return redirect('login');
        }
    }
}
