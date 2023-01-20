@extends('layouts.base')
@section('title',"Trang chủ")

@section('content')
    @include('client.header')
    <header1>
        <!-- header inner -->
        <div class="header">
            <div class="header_full_bg">
                <div class="header_top">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="logo">
                                    <a href=""><img src="{{asset('images/logo3.png')}}" alt="{{url('/client/home')}}"/></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="banner">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="banner_text">
                                    <h1>Hàng ngon <br>Biến hình ngay thôi</h1>
                                    <a class="get_btn" href="#protien" role="button" >Về sản phẩm</a> <a class="get_btn" href="#contact" role="button">Liên hệ ngay nào!</a>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <img class="bann_img" src="{{asset('images/supplements-png-8.png')}}" alt="#"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </header1>
    <!-- end header inner -->
    <!-- end header -->
    <!-- Về sản phẩm  -->
    <div id="protien" class="protien_main">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="titlepage">
                        <h2>Về sản phẩm</h2>
                    </div>
                </div>
            </div>
            <div class="column">
                <section class="p-slider">
                    <a href="{{url('/client/home/category')}}" ><h4 class="more_product">Xem thêm sản phẩm</h4></a>
                    <!--Heading *********** -->
                    <h3 class="product-slider-heading"></h3>
                    <div class="glider-contain">
                        <div class="glider">
                            @forelse($products as $product)
                                <!--Product-box *********** -->
                                <div class="product-box">
                                    <!--img-container-->
                                    <div class="p-img-container">
                                        <div class="p-img">
                                            <a href="{{url('/client/home/product/'.$product->product_id.'/'.$product->cate_id)}}" >
                                                <img src="{{$product-> url}}"  alt="Front">
                                            </a>
                                        </div>
                                    </div>
                                    <!--Text *********** -->
                                    <div class="p-box-text">
                                        <!--category-->
                                        <div class="product-title">
                                        <a href="{{url('/client/home/product/'.$product->product_id.'/'.$product->cate_id)}}" >
                                            <span>{{$product-> product_name}}</span>
                                        </a>
                                        </div>
                                        <div class="price-buy">
                                            <span class="p-price">{{$product->prices}}<sup>đ</sup></span>
                                            <a class="read_more mar_top" href="{{url('/client/home/product/'.$product->product_id.'/'.$product->cate_id)}}"> Mua ngay</a>
                                        </div>
                                    </div>
                                </div>
                            @empty
                                <p>Danh sach rong</p>
                            @endforelse

                        </div>

                        <button aria-label="Previous" class="glider-prev">«</button>
                        <button aria-label="Next" class="glider-next">»</button>
                    </div>

                </section>

{{--                <div class="category-right-content row">--}}
{{--                    @forelse($products as $product)--}}
{{--                        <div class="col-md-3">--}}
{{--                            <div class="protien">--}}
{{--                                <img src="{{$product-> url}}" href="#"/>--}}
{{--                                <h1><b>{{$product-> product_name}}</b></h1>--}}
{{--                                <h1>{{$product->prices}}<sup>đ</sup></h1>--}}
{{--                                <a class="read_more mar_top" href="{{url('/client/home/product/'.$product->product_id.'/'.$product->cate_id)}}"> Mua ngay</a>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    @empty--}}
{{--                        <p>Danh sach rong</p>--}}
{{--                    @endforelse--}}
{{--                </div>--}}
            </div>
        </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    <!-- end our protien  -->
    <!-- about -->
    <div id="about" class="about">
        <div class="container-fluid">
            <div class="row d_flex">
                <div class="col-md-6">
                    <div class="titlepage">
                        <h2>Về chúng tôi</h2>
                        <p>PT store là nơi buôn bán và là chuyên gia phân phối thực phẩm bổ sung hàng đầu thị trường trong quận Hoàng Mai.
                            Với nguyện vọng hoạt động tại hơn 70 quốc gia, chúng tôi mang đến giá trị và nguồn sản phẩm sạch bằng cách kết nối các nhà cung cấp TPBS hàng đầu thế giới.
                            Chúng tôi kết hợp hiểu biết sâu sắc về ngành, chuyên môn kỹ thuật và nhiều thập kỷ kinh nghiệm phân phối chọn lọc phê duyệt chặt chẽ các sản phẩm để mang lại giá trị sử dụng và những điều tốt nhất cho khách hàng.</p>
                    </div>
                </div>
                <div class="col-md-6 pad_right0">
                    <div class="about_img ">
                        <figure><img src="{{asset('images/about.png')}}" alt="#"/></figure>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end about -->
    <!-- growyhing -->
    <div class="growyhing">
        <div class="container">
            <div class="row d_flex">
                <div class="col-md-6">
                    <div class="body_img">
                        <figure><img src="{{asset('images/terry.png')}}" align="#"/></figure>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="titlepage">
                        <h2>Tác dụng tuyệt vời dành cho bạn</h2>
                        <a class="read_more" href="{{{url('/client/home/tintuc')}}}"> Đọc ngay</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end growyhing -->
    <!-- testimonial -->
    <div id="testimonial" class="testimonial">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>Đánh giá</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <div class="body_blu_img">
                        <figure><img src="{{asset('images/image1.png')}}" alt="#"/></figure>
                    </div>
                </div>
                <div class="col-md-7 pad_right0">
                    <div class="testimo_ban_bg">
                        <div id="testimo" class="carousel slide testimo_ban" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#testimo" data-slide-to="0" class="active"></li>
                                <li data-target="#testimo" data-slide-to="1"></li>
                                <li data-target="#testimo" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="container">
                                        <div class="carousel-caption relative2">
                                            <div class="row d_flex">
                                                <div class="col-md-11">
                                                    <i><img src="{{asset('images/costu.png')}}" alt="#"/></i>
                                                    <span>Tú 1 năm trước</span>
                                                    <p>lần đầu dùng thử mass , hy vọng tôi sẽ hết là bộ xương di động</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="container">
                                        <div class="carousel-caption relative2">
                                            <div class="row d_flex">
                                                <div class="col-md-11">
                                                    <i><img src="{{asset('images/costu.png')}}" alt="#"/></i>
                                                    <span>Tú hiện tại</span>
                                                    <p>OMG , giờ tôi đã trở thành 1 người bình thường </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="container">
                                        <div class="carousel-caption relative2">
                                            <div class="row d_flex">
                                                <div class="col-md-11">
                                                    <i><img src="{{asset('images/costu.png')}}" alt="#"/></i>
                                                    <span>Bạn Phong giấu tên</span>
                                                    <p>Đồ ngon mà chất lượng tốt quá , sẽ ủng hộ shop dài dài</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#testimo" role="button" data-slide="prev">
                                    <i class="fa fa-angle-left" aria-hidden="true"></i>
                                    <span class="sr-only">Trước</span>
                                </a>
                                <a class="carousel-control-next" href="#testimo" role="button" data-slide="next">
                                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                                    <span class="sr-only">Sau</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end testimonial -->
    <!--  contact -->
    <div id="contact" class="contact">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>Liên lạc với chúng tôi</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <form id="request" class="main_form">
                        <div class="row">
                            <div class="col-md-12 ">
                                <input class="contactus" placeholder="Họ tên" type="type" name="Full Name">
                            </div>
                            <div class="col-md-12">
                                <input class="contactus" placeholder="Email " type="type" name="Email ">
                            </div>
                            <div class="col-md-12">
                                <input class="contactus" placeholder="Số điện thoại" type="type" name="Phone Number">
                            </div>
                            <div class="col-md-12">
                                <textarea class="textarea" placeholder="Lời nhắn gửi" type="type" Message="Name"></textarea>
                            </div>
                            <div class="col-md-12">
                                <button class="send_btn">Gửi</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
<!-- loader  -->
<!-- end loader -->
<!-- header -->

<!-- end footer -->
<!-- Javascript files-->
