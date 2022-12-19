<?php

namespace App\Http\Controllers;

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
    public function show($id){
        return view('client/product',["product_id"=>$id]);
    }

}

