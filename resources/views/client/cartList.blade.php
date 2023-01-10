<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{asset('css/client.css')}}">
    <link rel="stylesheet" href="{{asset('js/cart.js')}}">
</head>
<body>
<div>
<a href="{{url('client/home')}}"><=Home</a>
</div>
<div class="container-fluid">
    <div class="row">
        <aside class="col-lg-9">
            <div class="card">
                <div class="table-responsive">
                    <table class="table table-borderless table-shopping-cart">
                        <thead class="text-muted">
                        <tr class="small text-uppercase">
                            <th scope="col">Product Info</th>
                            <th scope="col" width="120">Quantity</th>
                            <th scope="col" width="120">Prices</th>
                            <th>Total</th>
                        </tr>
                        </thead>
                        <tbody>
                        @if($cartItems->count()>0)
                            @php $total = 0; @endphp
                            @php $subtotal = 0; @endphp
                            @foreach($cartItems as $item)
                            <tr>
                                <td>
                                    <figure class="itemside align-items-center">
                                        <div class="aside" name="url"><img src="{{$item->url}}" width="100px" class="img-sm"></div>
                                        <figcaption class="info" name="product_name"><p>Name : {{$item->product_name}}</p>
                                            @foreach($category as $cate)
                                            <p class="text-muted small" name="cate_name">Category : {{$cate->cate_name}}</p>
                                            @endforeach
                                        </figcaption>
                                    </figure>
                                </td>
                                <td>
                                    <input type="number" name="quantity" min="1" value="{{$item->quantity}}" max="100" readonly>
                                </td>
                                <td>
                                    <div class="price-wrap"> <var name="prices">{{$item->prices}}<sup>đ</sup></var> <small class="text-muted"></small> </div>
                                </td>
                                <td>
                                    <div>{{$item->quantity * $item->prices}}<sup>đ</sup></div>
                                </td>
                                <td class="text-right d-none d-md-block">
                                    <form method="POST" action="{{url('/client/cart/'.$item->cart_id.'/delete')}}">
                                        @csrf
                                        @method('delete')
                                    <button type="submit" onclick="return confirm('Do you want to delete the product?')">Remove</button>
                                    </form>
                                </td>
                            </tr>
                            @php $total += $item->quantity * $item->prices @endphp
                            @endforeach
                            <tr>
                                @php $subtotal = $total @endphp
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><b>Total prices : {{$subtotal}}<sup>đ</sup></b></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </aside>
        <aside class="col-lg-3">
            <div class="card mb-3">
                <div class="card-body">
                    <form>
                        <div class="form-group"> <label>Do you have coupon?</label>
                            <div class="input-group"> <input type="text" class="form-control coupon" name="" placeholder="Coupon code">
                                <span class="input-group-append"> <button class="btn btn-primary btn-apply coupon">Apply</button> </span> </div>
                        </div>
                    </form>
                </div>
            </div>
                    <hr> <a href="#" class="btn btn-out btn-primary btn-square btn-main" data-abc="true"> Confirm Order </a>
                    <a href="{{url('client/home')}}" class="btn btn-out btn-success btn-square btn-main mt-2" data-abc="true">Continue Shopping</a>
        </aside>
    </div>
</div>
@endif
</body>
</html>
