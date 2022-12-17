@extends('layouts.admin_base')

@section('content')
    <h1 style="">Add product</h1>
    <form action="{{url('admin/product/index')}}" method="POST">
        @csrf
        <div class="mb-3">
            <label class="form-label">Product_Id</label>
            <input class="form-control" name="product_id" placeholder="Enter product ID">
        </div>
        <div class="mb-3">
            <label class="form-label">Image_URL</label>
            <input class="form-control" name="url" placeholder="Enter image URL">
        </div>
        <div class="mb-3">
            <label class="form-label">Category_Name</label>
            <input class="form-control" name="cate_name">
        </div>
        <div class="mb-3">
            <label class="form-label">Product_Name</label>
            <input class="form-control" name="product_name" placeholder="Enter product name">
        </div>
        <div class="mb-3">
            <label class="form-label">Product_Price</label>
            <input class="form-control" name="prices" placeholder="Enter prices">
        </div>
        <div class="mb-3">
            <label class="form-label">Product_Code</label>
            <input class="form-control" name="product_code" placeholder="Enter product Code">
        </div>
        <div class="mb-3">
            <label class="form-label">Product_Info</label>
            <input class="form-control" name="product_info" placeholder="Enter product Info">
        </div>
        <button type="submit" class="btn btn-primary">Confirm Add</button>
    </form>
@endsection
