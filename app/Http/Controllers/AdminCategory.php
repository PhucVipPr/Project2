<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminCategory extends Controller
{
    public function addCategory(){
        return view('admin/product/add_category');
    }
}
