@extends('layouts.base')
@section('title',"Tất cả sản phẩm")

@section('content')
    @include('client.header')
    <!-------------------category-------------------->
    <section class="category">
        <div class="container">
            <div class="category-top row">
                <p>Trang chủ</p> <span>&#10230; </span> <p>Tất cả sản phẩm</p> <span>&#10230; </span> <p>Tăng cân nhanh</p>
            </div>
        </div>
        <div class="container">
            <div class="row">
               @include('client.categoryLeft')
                <div class="category-right ">
                    <div class="category-right-top-item">
                        <p>Tất cả sản phẩm</p>
                    </div>
                    <div class="category-right-top-item">
                        <a>Sắp xếp theo:</a>
                        <a href="{{URL::current()."?sort=price_desc"}}">Giá cao đến thấp</a>
                        <a>|</a>
                        <a href="{{URL::current()."?sort=price_asc"}}"> Giá thấp đến cao</a>
                    </div>

                    <div class="category-right-content row">
                        @forelse($products as $product)
                            <div class="category-right-content-item">
                                <img src="{{$product-> url}}" href="#"/>
                                <h1>{{$product-> product_name}}</h1>
                                <p>{{$product->prices}}<sup>đ</sup></p>
                                <a class="read_more mar_top" href="{{url('/client/home/product/'.$product->product_id)}}"> Mua ngay</a>
                            </div>
                        @empty
                            <p>Danh sach rong</p>
                        @endforelse
                    </div>

                    <div class="category-right-bottom row">
{{--                        <div class="category-right-bottom-items">--}}
{{--                            <p>Hiển thị 2 <span>|</span>4 sản phẩm</p>--}}
{{--                        </div>--}}
                        <div class="category-right-bottom-items">
                            <p><span></span>{{$products->links("pagination::bootstrap-4")}}<span></span></p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
@endsection








