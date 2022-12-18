<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Facades\DB;
use mysql_xdevapi\Table;

class AdminProductController extends Controller
{
    public function create(){
        $categories = Category::get();
        return view('admin/product/add_product',['category'=>$categories]);
    }

    public function store(Request $request){
        $this->validate($request,[
            'product_id' => 'required|max:255',
            'url' => 'required',
            'product_name' => 'required',
            'prices' => 'required|numeric|max:10000000',
            'product_code' => 'required|numeric',
            'product_info' => 'required',
        ]);
        $product_id = $request->input('product_id');
        $url = $request->input('url');
        $product_name = $request->input('product_name');
        $prices = $request->input('prices');
        $product_code = $request->input('product_code');
        $product_info = $request->input('product_info');
        DB::table('products')->insert([
            'product_id' => $product_id,
            'product_name' => $product_name,
            'product_code' => $product_code,
            'product_info' => $product_info,
        ]);
        DB::table('image')->insert([
            'url' => $url,
        ]);
        DB::table('sell_product')->insert([
            'prices' => $prices,
        ]);
        action([AdminProductController::class,'addProduct']);
        return redirect('admin/product/add_product');
    }
}
