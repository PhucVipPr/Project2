@extends('layouts.base')
@section('title',"Chi tiết sản phẩm")
@section('content')
    @include('client.header')
    <!-------------------------------PRODUCT-------------------->
    <section class="product">
        <form method="POST" action="{{url('client/cart',$product->product_id)}}">
            @csrf
            <div class="container">
                <div class="product-top row">
                    <p>Trang chủ</p> <span>&#10230;  </span> <p>{{$product->cate_name}}</p>
                    <span>&#10230; </span> <p>{{$product->product_name}}</p>
                </div>
                <div class="product-content row">
                    <div class="product-content-left row">
                        <div class="product-content-left-big-img">
                            <img src="{{$image->url}}" alt="" width="200px">
                        </div>
                    </div>
                    <div class="product-content-right ">
                        <div class="product-content-right-product-name">
                            <h1>{{$product->product_name}}</h1>
                            <p>Mã sản phẩm : {{$product->product_code}}</p>
                        </div>
                        <div class="product-content-right-product-price">
                            <p>Giá : {{$sellProduct->prices}} <sup>đ</sup></p>
                        </div>
                        <div class="product-content-right-product-favor">
                            <p style="font-weight: bold;">Hương vị:</p>
                            <div class="favor">
                                <span>Chocolate</span>
                                <span>Strawberry</span>
                                <span>Vanila</span>
                                <span>Cookie's cream</span>
                                <span>Rocky rode</span>
                            </div>
                        </div>
                        <p style="font-weight:bold;">Số lượng</p>&nbsp;
                        <input name="quantity" type="number" min="1" value="1" max="100"><br>
                        <p style="color: red;">Vui lòng chọn hương vị</p>
                        <div class="product-content-right-product-button">
                            <form method="POST">
                                @csrf
                                <input type="hidden" name="product_id" value="{{$product->product_id}}">
                                <button>
                                    <i class="fa fa-shopping-cart"></i>
                                    <p>Mua Hàng</p>
                                </button>
                            </form>
                        </div>
                        <div class="product-content-right-bottom">
                            <div class="product-content-right-bottom-top">
                                &#8744;
                            </div>
                            <div class="product-content-right-bottom-content-big">
                                <div class="product-content-right-bottom-content-title row">
                                    <div class="product-content-right-bottom-content-title-item chitiet">
                                        <p>Đặc điểm nổi bật</p>
                                    </div>
                                    <div class="product-content-right-bottom-content-title-item chitiethon">
                                        <p>Thành phần</p>
                                    </div>
                                </div>
                                <div class="product-content-right-bottom-content-chitiet">
                                    <p>{!! $product->product_info !!}</p>
                                </div>
                                <div class="product-content-right-bottom-content-chitiethon">
                                    <p>{!! $product->info_dt !!}</p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-list">
                <div class="title">
                    Sản phẩm liên quan
                </div>
                <div class="product-list row">
                    @forelse($products as $product)
                        <div class="product-list-item">
                            <img src="{{$product-> url}}" href="#"/>
                            <h1>{{$product-> product_name}}</h1>
                            <p>{{$product->prices}}<sup>đ</sup></p>
                            <a class="read_more mar_top" href="{{url('/client/home/product/'.$product->product_id.'/'.$product->cate_id)}}"> Mua ngay</a>
                        </div>
                    @empty
                        <div class="empty">Danh sách rỗng</div>
                    @endforelse
                </div>
            </div>

        </form>
    </section>
@endsection




