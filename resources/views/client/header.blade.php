<header>
    <div class="logo">
        <img width="50px" src="{{asset('images/logo3.png')}}" href="{{url('/client/home')}}">
    </div>
    <div class="menu">
        <li><a href="{{url('/client/home')}}">Trang chủ</a></li>
        <li><a href="">Sữa tăng cân</a>
            <ul class="sub-menu">
                <li><a href="">Tăng cân nhanh</a></li>
                <li><a href="">Tăng cân nạc</a></li>
            </ul>
        </li>
        <li><a href="">Whey Protein</a>
            <ul class="sub-menu">
                <li><a href="">Whey Protein Blend</a></li>
                <li><a href="">Whey Protein Isolate</a></li>
                <li><a href="">Hydrolyzed Whey</a></li>
                <li><a href="">Casein Protein</a></li>
                <li><a href="">Meal Replacement</a></li>
            </ul>
        </li>
        <li><a href="">BCAAs, EAAs</a></li>
        <li><a href="">Pre-Workout,Creatine</a>
            <ul class="sub-menu">
                <li><a href="">Pre-Workout</a></li>
                <li><a href="">Pre & Giảm mỡ</a></li>
                <li><a href="">Creatine</a></li>
                <li><a href="">Đơn chất</a></li>
            </ul>
        </li>
        <li><a href="">Vitamin,khoáng chất</a>
            <ul class="sub-menu">
                <li><a href="">Bổ sung Vitamin</a></li>
                <li><a href="">Tăng Testosterone</a></li>
                <li><a href="">Bổ sung dầu cá</a></li>
            </ul>
        </li>
        <li><a href="">Giảm mỡ</a>
            <ul class="sub-menu">
                <li><a href="">Sinh nhiệt đốt mỡ</a></li>
                <li><a href="">Ít chất kích thích</a></li>
            </ul>
        </li>
    </div>
    <div class="others">
        <form action="{{url('client/home/search')}}" method="POST">
            {{csrf_field()}}
            <li><input name="keyword_submit" placeholder="Tìm kiếm" type="text"><i class="fa fa-search" style="padding-left: 10px"></i></li>
        </form>
        <li> <div class="dropdown">
                <button class="fa fa-user" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    @if(Auth::id()!=0)
                        {{Auth::user()->name}}
                    @else
                        User
                    @endif
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="{{url('client/info')}}">Info</a>
                    <form action="{{url('logout')}}" method="POST">
                        @csrf
                        <button class="fa fa-sign-out">Logout</button>
                    </form>
                </div>
            </div>
        </li>
        <li> <a class="fa fa-shopping-cart" href="{{url('client/cartList')}}"></a></li>
    </div>
</header>
