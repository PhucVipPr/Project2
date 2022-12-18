<?php

namespace App\Http\Controllers;

use App\Models\Category;
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
        return redirect('admin/product/add_category')->with('Added successfully', 'Your new category has been saved!');
    }

    public function destroy($cate_id){
        $categories = Category::findOrFail($cate_id);
        $categories->delete();
        return redirect('admin/product/categories');
    }
}
