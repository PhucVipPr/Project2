<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{

    //
    function viewHome(){
        return view('admin/home');
    }

    function viewProduct(){
        $products = DB::table('products')
            ->join('image', 'products.product_id', '=', 'image.product_id')
            ->join('category', 'products.cate_id', '=', 'category.cate_id')
            ->join('sell_product', 'products.product_id', '=', 'sell_product.product_id')
            ->select('products.*', 'image.url', 'category.cate_name','sell_product.prices')
            ->get();
        return view('admin/product/index',['products'=>$products]);
    }

    function viewCategory(){
        $category = DB::table('category')->get();
        return view('admin/product/categories',['category'=>$category]);
    }

    function viewClient(){
        $products = DB::table('products')->get();
        return view('client/home',['products'=>$products]);
    }


}
