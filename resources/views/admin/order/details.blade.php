@extends('layouts.admin_base')

@section('content')
    <br>
    <h1 class="fas fa-shopping-cart">Order Detail</h1>
    <br>
    <br>
    <table class="table table-bordered border-primary">
        <thead>
        <tr>
            <th scope="col">Image</th>
            <th scope="col">Product Name</th>
            <th scope="col">Product Code</th>
            <th scope="col">Quantity</th>
            <th scope="col">Prices</th>
            <th scope="col">Total</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            @foreach($orderItems as $item)
                <th scope="row"><img src="{{$item->url}}" width="90px"></th>
                <td>{{$item->product_name}}</td>
                <td>{{$item->product_code}}</td>
                <td>{{$item->quantity}}</td>
                <td>{{$item->price}}</td>
                <td>{{$item->quantity * $item->price}}</td>
            @endforeach
        </tr>
        </tbody>
    </table>
@endsection
