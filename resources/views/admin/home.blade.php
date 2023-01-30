@extends('layouts.admin_base')

@section('content')
    <h1>Home Page</h1>
    <div class="best-seller">
    <h3>Best Seller</h3>
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
                <td></td>
            </tr>
        @endforeach
        </tbody>
    </table>
    </div>

    <div class="income">

    </div>

@endsection
