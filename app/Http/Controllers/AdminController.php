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

    function viewUser(){
        return view('admin/users/index');
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


}
