<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Image;
use App\Models\Product;
use App\Models\Sell_product;
use App\Models\User;
use Illuminate\Support\Collection;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use mysql_xdevapi\Table;

class ClientController extends Controller
{
    public function viewClient(){
        $products = DB::select("SELECT * FROM products INNER JOIN images ON products.product_id = images.product_id INNER JOIN sell_products ON products.product_id = sell_products.product_id");

        return view('client/home',['products'=>$products]);
    }

    public function viewInfo(){
        $infos = DB::table('users')
            ->where('isAdmin','=',0)
            ->get();
        return view('client/info',compact('infos'));
    }

    public function editInfo($id){
        $infos = DB::table('users')->get()
        ->where('isAdmin','=',0)
        ->where('id','=',$id)->first();
        return view('client/editInfo',compact('infos'));
    }

    public function update(Request $request,$id){
        $updateInfo = $request->validate([
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required|numeric',
            'address'=> 'required',
            ]);
        DB::table('users')->where('id','=',$id)->update($updateInfo);
        return redirect('client/info');
    }


    public function viewCategory(){
        //$products = DB::select("SELECT * FROM products INNER JOIN images ON products.product_id = images.product_id INNER JOIN sell_products ON products.product_id = sell_products.product_id");
        $product = DB::table('products')
            ->join('images','images.product_id','=','products.product_id')
            ->join('sell_products','sell_products.product_id','=','products.product_id')
            ->join('categories','categories.cate_id','=','products.cate_id')
            ->select('products.*','images.url','sell_products.prices')
            ->paginate(6);
        return view('client/category')->with('products',$product);
    }

    public function show($product_id,$cate_name){
        $product = DB::table('categories')
            ->join('products','products.cate_id','=','categories.cate_id')
            ->select('products.*','categories.cate_name')
            ->get()
            ->where('product_id',"=",$product_id)->first();
        $image = DB::table('images')->where('product_id',"=",$product_id)->first();
        $sellProduct = DB::table('sell_products')->where('product_id',"=",$product_id)->first();
        $products =DB::table('categories')
            ->join('products','products.cate_id','=','categories.cate_id')
            ->join('images','images.product_id','=','products.product_id')
            ->join('sell_products','sell_products.product_id','=','products.product_id')
            ->where('products.product_id',"!=",$product_id)
            ->where('categories.cate_id' ,"=",$cate_name)
            ->get()->take(5);
        $flavors = DB::table('flavors')
            ->get();
        return view('client/product',compact('product','image','sellProduct','products','flavors'));
    }

    public function searchInfo(Request $request){
        $keyword = $request->get('keyword_submit');
        $collection =DB::table('products')
            ->join('images','images.product_id','=','products.product_id')
            ->join('sell_products','sell_products.product_id','=','products.product_id')
            ->select('products.*','images.url','sell_products.prices')
            ->where('product_name','like','%'.$keyword.'%')
            ->paginate(6);
//            ->sortBy('prices');
//        dd($collection);
//        dd($collection->sortBy('prices'));
        if($request-> get('sort')=='price_asc'){
            $collection =DB::table('products')
                ->join('images','images.product_id','=','products.product_id')
                ->join('sell_products','sell_products.product_id','=','products.product_id')
                ->select('products.*','images.url','sell_products.prices')
                ->where('product_name','like','%'.$keyword.'%')
                ->paginate(6);
            $collection->setCollection(
            $collection->sortBy('prices')
          );
        }
        if($request-> get('sort')=='price_desc'){
            $collection =DB::table('products')
                ->join('images','images.product_id','=','products.product_id')
                ->join('sell_products','sell_products.product_id','=','products.product_id')
                ->select('products.*','images.url','sell_products.prices')
                ->where('product_name','like','%'.$keyword.'%')
                ->paginate(6);
            $collection->setCollection(
                $collection->sortByDesc('prices')
            );
        }
//        $collection = $collection->sortBy('prices')->all();


//       ;
//        if($keyword != null){
//            $search_product = DB::table('products')
//                ->join('images','images.product_id','=','products.product_id')
//                ->join('sell_products','sell_products.product_id','=','products.product_id')
//                ->select('products.*','images.url','sell_products.prices')
//                ->where('product_name','like','%'.$keyword.'%');
//        }
//        if($request-> get('sort')=='price_asc'){
//            $search_product = DB::table('products')
//                ->join('images','images.product_id','=','products.product_id')
//                ->join('sell_products','sell_products.product_id','=','products.product_id')
//                ->select('products.*','images.url','sell_products.prices')
//                ->orderBy('prices','ASC')
//                ->paginate(4);
//        }
//        elseif($request->get('sort')=='price_desc'){
//            $search_product = DB::table('products')
//                ->join('images','images.product_id','=','products.product_id')
//                ->join('sell_products','sell_products.product_id','=','products.product_id')
//                ->select('products.*','images.url','sell_products.prices')
//                ->orderBy('prices','DESC')
//                ->paginate(4);
//        }
        return view('client/search',['search_product'=>$collection]);
    }

    public function news(){
        return view('/client/news');
    }

    //Cac trang danh muc
    public function  viewMass(){
        //$products = DB::select("SELECT * FROM products INNER JOIN images ON products.product_id = images.product_id INNER JOIN sell_products ON products.product_id = sell_products.product_id");
        $product = DB::table('products')
            ->join('images','images.product_id','=','products.product_id')
            ->join('sell_products','sell_products.product_id','=','products.product_id')
            ->join('categories','categories.cate_id','=','products.cate_id')
            ->select('products.*','images.url','sell_products.prices')
            ->where('cate_name','=','Sữa tăng cân')
            ->paginate(6);
        return view('client/category/mass')->with('products',$product);
    }
    public function  viewWhey(){
        //$products = DB::select("SELECT * FROM products INNER JOIN images ON products.product_id = images.product_id INNER JOIN sell_products ON products.product_id = sell_products.product_id");
        $product = DB::table('products')
            ->join('images','images.product_id','=','products.product_id')
            ->join('sell_products','sell_products.product_id','=','products.product_id')
            ->join('categories','categories.cate_id','=','products.cate_id')
            ->select('products.*','images.url','sell_products.prices')
            ->where('cate_name','=','Whey Protein')
            ->paginate(6);
        return view('client/category/whey')->with('products',$product);
    }
    public function  viewBCAAsEAAs(){
        //$products = DB::select("SELECT * FROM products INNER JOIN images ON products.product_id = images.product_id INNER JOIN sell_products ON products.product_id = sell_products.product_id");
        $product = DB::table('products')
            ->join('images','images.product_id','=','products.product_id')
            ->join('sell_products','sell_products.product_id','=','products.product_id')
            ->join('categories','categories.cate_id','=','products.cate_id')
            ->select('products.*','images.url','sell_products.prices')
            ->where('cate_name','=','BCAAs, EAAs')
            ->paginate(6);

        return view('client/category/bcaa')->with('products',$product);
    }
    public function  viewPreworkoutCreatine(){
        //$products = DB::select("SELECT * FROM products INNER JOIN images ON products.product_id = images.product_id INNER JOIN sell_products ON products.product_id = sell_products.product_id");
        $product = DB::table('products')
            ->join('images','images.product_id','=','products.product_id')
            ->join('sell_products','sell_products.product_id','=','products.product_id')
            ->join('categories','categories.cate_id','=','products.cate_id')
            ->select('products.*','images.url','sell_products.prices')
            ->where('cate_name','=','Pre-Workout,Creatine')
            ->paginate(6);
        return view('client/category/PreworkOut')->with('products',$product);
    }
    public function  viewVitamin(){
        //$products = DB::select("SELECT * FROM products INNER JOIN images ON products.product_id = images.product_id INNER JOIN sell_products ON products.product_id = sell_products.product_id");
        $product = DB::table('products')
            ->join('images','images.product_id','=','products.product_id')
            ->join('sell_products','sell_products.product_id','=','products.product_id')
            ->join('categories','categories.cate_id','=','products.cate_id')
            ->select('products.*','images.url','sell_products.prices')
            ->where('cate_name','=','Vitamin,khoáng chất')
            ->paginate(6);
        return view('client/category/Vitamin')->with('products',$product);
    }
    public function  viewBurnFat(){
        //$products = DB::select("SELECT * FROM products INNER JOIN images ON products.product_id = images.product_id INNER JOIN sell_products ON products.product_id = sell_products.product_id");
        $product = DB::table('products')
            ->join('images','images.product_id','=','products.product_id')
            ->join('sell_products','sell_products.product_id','=','products.product_id')
            ->join('categories','categories.cate_id','=','products.cate_id')
            ->select('products.*','images.url','sell_products.prices')
            ->where('cate_name','=','Giảm mỡ')
            ->paginate(6);
        return view('client/category/burnFat')->with('products',$product);
    }
}

