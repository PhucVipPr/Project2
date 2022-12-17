@extends('layouts.admin_base')

@section('content')
    <h1 style="">Add Category</h1>
    <form action="{{url('admin/product/index')}}" method="POST">
        @csrf
        <div class="mb-3">
            <label class="form-label">Category_Id</label>
            <input class="form-control" name="cate_id">
        </div>
        <div class="mb-3">
            <label class="form-label">Category_Name</label>
            <input class="form-control" name="cate_name">
        </div>
        <button type="submit" class="btn btn-primary">Confirm Add</button>
    </form>
@endsection
