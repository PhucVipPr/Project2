<!DOCTYPE html>
<html lang="en">
<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>pro</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <!-- style css -->
    <link rel="stylesheet" href="{{asset('css/style.css')}}">
    <!-- Responsive-->
    <link rel="stylesheet" href="{{asset('css/responsive.css')}}">
    <!-- fevicon -->
    <link rel="icon" href="{{asset('images/fevicon.png')}}" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="{{asset('css/jquery.mCustomScrollbar.min.css')}}">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->
<body class="main-layout">
<!-- loader  -->
<!-- end loader -->
<!-- header -->
<header>
    <!-- header inner -->
    <div class="header">
        <div class="header_full_bg">
            <div class="header_top">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="logo">
                                <a href="index.html"><img src="{{asset('images/logo.png')}}" alt="#"/></a>
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
                                <a class="get_btn" href="#about" role="button" >Về sản phẩm</a> <a class="get_btn" href="#contact" role="button">Liên hệ ngay nào!</a>
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
</header>
<!-- end header inner -->
<!-- end header -->
<!-- Về sản phẩm  -->
<div id="protien" class="protien_main">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="titlepage">
                    <h2>Về sản phẩm</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="protien">
                    <figure><img src="{{asset('images/mutant-iso-surge-mint-chocolate-chip.png')}}" alt="#"/></figure>
                    <h3>$400</h3>
                    <span> Variations  </span>
                    <a class="read_more mar_top" href="Javascript:void(0)"> Mua ngay</a>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="protien">
                    <figure><img src="{{asset('images/on-whey-gold-standard-whey-protein-5lbs-double-rich-chocolate-gymstore.png')}}" alt="#"/></figure>
                    <h3>$400</h3>
                    <span>  Passages  </span>
                    <a class="read_more mar_top" href="Javascript:void(0)"> Mua ngay</a>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="protien">
                    <figure><img src="{{asset('images/rule1-r1-protein-5lbs-chocolate-fudge-whey-protein-phat-trien-co-bap-gymstore (1).png')}}" alt="#"/></figure>
                    <h3>$400</h3>
                    <span> Variations </span>
                    <a class="read_more mar_top" href="Javascript:void(0)"> Mua ngay</a>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="protien">
                    <figure><img src="{{asset('images/nutrabolic-hydropure-extreme-chocolate.png')}}" alt="#"/></figure>
                    <h3>$400</h3>
                    <span> Pedicure </span>
                    <a class="read_more mar_top" href="Javascript:void(0)"> Mua ngay</a>
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
                    <a class="read_more" href="Javascript:void(0)"> Đọc thêm</a>
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
                    <a class="read_more" href="Javascript:void(0)"> Đọc ngay</a>
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
<!-- end contact -->
<!--  footer -->
<footer>
    <div class="footer">
        <div class="daih_bg">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <ul class="conta">
                            <li><i class="fa fa-phone" aria-hidden="true"></i> Gọi ngay:  +01 123467890</li>
                            <li><i class="fa fa-map-marker" aria-hidden="true"></i> Vị trí cửa hàng</li>
                            <li> <i class="fa fa-envelope" aria-hidden="true"></i><a href="#"> anhnamco9@gmail.com</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <!-- <div class="col-sm-12">
                   <img class="tex_left" src="images/logo2.png" alt="#"/>
                </div>
                <div class=" col-md-3 col-sm-6">
                   <p class="variat">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim Lorem ipsum </p>
                </div> -->
                <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                    <h3>Thông tin  </h3>
                    <ul class="link_menu">
                        <li> Kiến thức tập gym</li>
                        <li> Chế độ dinh dưỡng</li>
                    </ul>
                </div>
                <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                    <h3>Giới thiệu chung</h3>
                    <ul class="link_menu">
                        <li> Giới thiệu về cửa hàng </li>
                        <li> Quy định</li>
                        <li> Liên hệ </li>
                        <li> Chính sách đổi trả</li>
                    </ul>
                </div>
                <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                    <h3>Hỗ trợ</h3>
                    <ul class="link_menu">
                        <li> Hướng dẫn đặt hàng</li>
                        <li> Hướng dẫn thanh toán</li>
                        <li> Chính sách bảo mật</li>
                        <li> Chính sách vận chuyển</li>
                        <li>Chính sách bảo hành</li>
                    </ul>
                </div>
                <div class="col-sm-12">
                    <ul class="social2_icon">
                        <li><a href="javascript:void(0)"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="javascript:void(0)"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="javascript:void(0)"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                        <li><a href="javascript:void(0)"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 offset-md-1">
                        <p>© 2019 All Rights Reserved.<a href="https://html.design/"> Free html Templates</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- end footer -->
<!-- Javascript files-->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/jquery-3.0.0.min.js"></script>
<!-- sidebar -->
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
