<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminCategory extends Controller
{
    public function create(){
        return view('admin/product/add_category');
    }

    public function store(Request $request){
        $this->validate($request,[
            'cate_id' => 'required',
            'cate_name' => 'required',
        ]);
        $cate_id = $request->input('cate_id');
        $cate_name = $request->input('cate_name');
        DB::table('category')->insert([
            'cate_id'=> $cate_id,
            'cate_name' => $cate_name,
        ]);
        return redirect('admin/product/add_category');
    }
}
