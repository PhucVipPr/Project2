<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
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

    public function checkOut(){
        if (Auth::user()->address==null && Auth::user()->phone==null  ){
            redirect('client/info');
        }else{
        $orders = new Order();
        $orders->user_id = Auth::user()->id;
        $orders->order_name = Auth::user()->name;
        $orders->order_phone = Auth::user()->phone;
        $orders->order_address = Auth::user()->address;
        $orders->save();

        $cartItems = DB::table('carts')
            ->join('sell_products','sell_products.product_id','=','carts.product_id')
            ->join('orders','orders.user_id','=','carts.user_id')
            ->where('carts.user_id','=',Auth::user()->id)
            ->select('carts.*','sell_products.prices','orders.order_id')
            ->get();
        foreach ($cartItems as $item){
            OrderDetail::create([
                'order_id' => $item->order_id,
                'product_id' => $item->product_id,
                'quantity' => $item->quantity,
                'price' => $item->prices,
            ]);
            $product = Product::where('product_id',$item->product_id)->first();
            $product->quantity = (int)($product->quantity) - (int)($item->quantity);
            $product->update(['quantity'=>$product->quantity]);
        }
        $cartItems = Cart::where('user_id',Auth::id())->get();
        Cart::destroy($cartItems);
        return redirect('client/home');
        }
    }


    public function clientOrder(){
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
        $orders = DB::table('orders')
            ->take(1)->get();
        return view('client/clientOrder',compact('cartItems','category','userData','charges','orders'));
    }


}
