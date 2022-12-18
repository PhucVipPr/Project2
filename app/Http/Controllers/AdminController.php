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
            ->join('categories', 'products.cate_id', '=', 'categories.cate_id')
            ->join('sell_product', 'products.product_id', '=', 'sell_product.product_id')
            ->select('products.product_id','products.product_code','products.product_name','products.product_info',
                'image.url','categories.cate_id', 'categories.cate_name','sell_product.prices')
            ->get();
        return view('admin/product/index',['products'=>$products]);
    }

    function viewCategory(){
        $categories = DB::table('categories')->get();
        return view('admin/category/index',['categories'=>$categories]);
    }

    function viewClient(){
        $products = DB::table('products')->get();
        return view('client/home',['products'=>$products]);
    }


}
