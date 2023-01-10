@extends('layouts.admin_base')

@section('content')
    <h1 style="">Edit product</h1>
    <form action="{{url('admin/product/'.$products->product_id).'/edit'}}" method="POST">
        @csrf
        @method('put')
        <div class="mb-3">
            <label class="form-label">Product_Id</label>
            <input class="form-control" name="product_id" value="{{$products->product_id}}" readonly>
        </div>
        <div class="mb-3">
            <label class="form-label">Image_URL</label>
            <input class="form-control" name="url" value="{{$products->url}}" placeholder="Enter image URL">
        </div>
        <div class="mb-3">
            <label class="form-label">Category_Name</label>
            <select name="cate_id">
                @foreach($category as $cate)
                    <option value="{{$cate->cate_id}}">{{$cate->cate_name}}</option>
                @endforeach
            </select>
        </div>
        <div class="mb-3">
            <label class="form-label">Product_Name</label>
            <input class="form-control" name="product_name" value="{{$products->product_name}}" placeholder="Enter product name">
        </div>
        <div class="mb-3">
            <label class="form-label">Product_Price</label>
            <input class="form-control" name="prices" value="{{$products->prices}}" placeholder="Enter prices">
        </div>
        <div class="mb-3">
            <label class="form-label">Product_Code</label>
            <input class="form-control" name="product_code" value="{{$products->product_code}}" placeholder="Enter product Code">
        </div>
        <div class="mb-3">
            <label class="form-label">Product_Info</label>
            <input class="form-control" name="product_info" value="{{$products->product_info}}" placeholder="Enter product Info">
        </div>
        <button type="submit" class="btn btn-primary">Confirm Update</button>
    </form>
@endsection
