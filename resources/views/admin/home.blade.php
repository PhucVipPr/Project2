@extends('layouts.admin_base')

@section('content')
    <h1>Home Page</h1>
    <hr>
    <div class="best-seller">
        <b><h3><p style="color: green">Best Seller</p></h3></b>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Product_Id</th>
            <th scope="col">Product_Image</th>
            <th scope="col">Category_Name</th>
            <th scope="col">Product_Name</th>
            <th scope="col">Product_Code</th>
            <th scope="col">Status</th>
            <th scope="col">Sold Quantity</th>
        </tr>
        </thead>
        <tbody class="table-group-divider">
        @foreach($bestItems as $item)
            <tr>
                <th scope="row">{{$item->product_id}}</th>
                <td><img src="{{$item->url}}" width="80px"></td>
                <td>{{$item->cate_name}}</td>
                <td>{{$item->product_name}}</td>
                <td>{{$item->product_code}}</td>
                <td>
                    @if($item->quantity==0)
                        Out of stock
                    @elseif($item->quantity<5)
                        Almost
                    @else
                        In stock
                    @endif
                </td>
                <td>{{10-$item->quantity}}</td>
            </tr>
        @endforeach
        </tbody>
    </table>
    </div>
    <hr>
    <div class="income">
        <h3><p style="color: firebrick">Product Income</p></h3>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Product_Id</th>
                <th scope="col">Product_Image</th>
                <th scope="col">Category_Name</th>
                <th scope="col">Product_Name</th>
                <th scope="col">Product_Price</th>
                <th scope="col">Sold Quantity</th>
                <th scope="col">Income</th>
            </tr>
            </thead>
            <tbody class="table-group-divider">
            @if($allItems->count()>0)
                @php $total =0; @endphp
                @php $sold=0; @endphp
            @foreach($allItems as $item)
                <tr>
                    <th scope="row">{{$item->product_id}}</th>
                    <td><img src="{{$item->url}}" width="80px"></td>
                    <td>{{$item->cate_name}}</td>
                    <td>{{$item->product_name}}</td>
                    <td>{{$item->prices}}</td>
                    <td>{{10-$item->quantity}}</td>
                    <td>{{$item->prices * (10-$item->quantity)}}</td>
                </tr>
                @php $total += $item->prices * (10-$item->quantity) @endphp
                @php $sold  += $item->quantity @endphp
            @endforeach
                <tr>
                    <th scope="row"></th>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><b><p style="color: red;">Total sold : {{$sold}}</p> </b></td>
                    <td><b><p style="color: blue;">Total income : {{$total}}</p></b></td>
                </tr>
            @endif
            </tbody>
        </table>
        <p><span></span>{{$allItems->links("pagination::bootstrap-4")}}<span></span></p>
    </div>

@endsection
