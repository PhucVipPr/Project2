<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ClientController extends Controller
{
    function viewClient(){
        $products = DB::select("SELECT * FROM products INNER JOIN image ON products.product_id = image.product_id INNER JOIN sell_product ON products.product_id = sell_product.product_id");

        return view('client/home',['products'=>$products]);
    }
    function viewCategory(){
        $products = DB::select("SELECT * FROM products INNER JOIN image ON products.product_id = image.product_id INNER JOIN sell_product ON products.product_id = sell_product.product_id");

        return view('client/category',['products'=>$products]);
    }

    public function show($product_id){
        $product = DB::table('products')->where('product_id',"=",$product_id)->first();
        $categories =Category::all();
        return view('client/product',['products'=>$product]);
    }

}

