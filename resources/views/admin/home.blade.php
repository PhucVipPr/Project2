@extends('layouts.admin_base')

@section('content')
    <h1>Home Page</h1>
    <hr>
    <div class="chart">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
        <body>
        <canvas id="myChart" style="width:100%;max-width:600px"></canvas>
        <script>
            var xValues = [0,1,2,3,4,5,6,7,8,9,10,11,12];

            new Chart("myChart", {
                type: "line",
                data: {
                    labels: xValues,
                    datasets: [{
                        data: [860,1140,1060,1060,1070,1110,1330,2210,7830,2478],
                        borderColor: "red",
                        fill: false
                    }, {
                        data: [1600,1700,1700,1900,2000,2700,4000,5000,6000,7000],
                        borderColor: "green",
                        fill: false
                    }, {
                        data: [300,700,2000,5000,6000,4000,2000,1000,200,100],
                        borderColor: "blue",
                        fill: false
                    }]
                },
                options: {
                    legend: {display: false}
                }
            });
        </script>
        </body>
    </div>

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
        <div class="category-right-bottom-items">
        <p><span></span>{{$allItems->links("pagination::bootstrap-4")}}<span></span></p>
        </div>
    </div>

@endsection
