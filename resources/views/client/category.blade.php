@extends('layouts.base')
@section('title',"Tất cả sản phẩm")

@section('content')
    @extends('client.header')
    <!-------------------category-------------------->
    <section class="category">
        <div class="container">
            <div class="category-top row">
                <p>Trang chủ</p> <span>&#10230; </span> <p>Sữa tăng cân</p> <span>&#10230; </span> <p>Tăng cân nhanh</p>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="category-left">
                    <ul>
                        <li class="category-left-li"><a href="#">Sữa tăng cân</a>
                            <ul>
                                <li><a href="">Tăng cân nhanh</a></li>
                                <li><a href="">Tăng cân nạc</a></li>
                            </ul>
                        </li>
                        <li class="category-left-li"><a href="#">Whey Protein</a>
                            <ul>
                                <li><a href="">Whey Protein Blend</a></li>
                                <li><a href="">Whey Protein Isolate</a></li>
                                <li><a href="">Hydrolyzed Whey</a></li>
                                <li><a href="">Casein Protein</a></li>
                                <li><a href="">Meal Replacement</a></li>
                            </ul>
                        </li>
                        <li class="category-left-li"><a href="#">BCAAs, EAAs</a></li>
                        <li class="category-left-li"><a href="#">Pre-Workout,Creatine</a>
                            <ul class="sub-menu">
                                <li><a href="">Pre-Workout</a></li>
                                <li><a href="">Pre & Giảm mỡ</a></li>
                                <li><a href="">Creatine</a></li>
                                <li><a href="">Đơn chất</a></li>
                            </ul>
                        </li>
                        <li class="category-left-li"><a href="#">Vitamin,khoáng chất</a>
                            <ul class="sub-menu">
                                <li><a href="">Bổ sung Vitamin</a></li>
                                <li><a href="">Tăng Testosterone</a></li>
                                <li><a href="">Bổ sung dầu cá</a></li>
                            </ul>
                        </li>
                        <li class="category-left-li"><a href="#">Giảm mỡ</a>
                            <ul class="sub-menu">
                                <li><a href="">Sinh nhiệt đốt mỡ</a></li>
                                <li><a href="">Ít chất kích thích</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="category-right row">
                    <div class="category-right-top-item">
                        <p>Sữa tăng cân</p>
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
                        <div class="category-right-bottom-items">
                            <p>Hiển thị 2 <span>|</span>4 sản phẩm</p>
                        </div>
                        <div class="category-right-bottom-items">
                            <p><span></span>{{$products->links("pagination::bootstrap-4")}}<span></span></p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
@endsection








