@extends('layouts.admin_base')

@section('content')
    <br>
    <h1 class="fas fa-shopping-cart"> Order</h1>
    <br>
    <table class="table table-bordered border-primary">
        <thead>
        <tr>
            <th scope="col">Order by</th>
            <th scope="col">Order Name</th>
            <th scope="col">Status</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        @foreach($orderItems as $item)
            <th scope="row">{{$item->name}}</th>
            <td>{{$item->order_name}}</td>
            <td>Chưa xử lý</td>
            <td>
                <a href="{{url('admin/order/'.$item->order_id.'/details')}}" >Check-Details </a> |
                &nbsp;
                <button>Confirm Order</button>
            </td>
            @endforeach
        </tr>
        </tbody>
    </table>
@endsection
