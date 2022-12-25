<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class CartController extends Controller
{
    public function viewCart(){
        $cartItems = Cart::getContent();
        return view('client/cart',compact('cartItems'));
    }

    public function addCart(Request $request){
        Cart::add([
           'cart_id' => $request->cart_id,
           ''
        ]);

        return redirect()->back()->with('success','Product added to your cart');
    }
}
