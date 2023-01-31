@extends('layouts.admin_base')

@section('content')
    <html>
    <h1>Home Page</h1>
    <hr>
    <div class="chart">
        <!DOCTYPE HTML>
        <html>
        <head>
            <script>
                window.onload = function () {

                    var chart = new CanvasJS.Chart("chartContainer", {
                        animationEnabled: true,

                        title:{
                            text:"Income This Year"
                        },
                        axisX:{
                            interval: 1
                        },
                        axisY2:{
                            interlacedColor: "rgba(1,77,101,.2)",
                            gridColor: "rgba(1,77,101,.1)",
                            title: "Income of Sold Product"
                        },
                        data: [{
                            type: "bar",
                            name: "companies",
                            axisYType: "secondary",
                            color: "#014D65",
                            dataPoints: [
                                { y: 3, label: "January" },
                                { y: 7, label: "February" },
                                { y: 5, label: "March" },
                                { y: 9, label: "April" },
                                { y: 7, label: "May" },
                                { y: 7, label: "June" },
                                { y: 9, label: "July" },
                                { y: 8, label: "August" },
                                { y: 11, label: "September" },
                                { y: 15, label: "October" },
                                { y: 12, label: "November" },
                                { y: 15, label: "December" }
                            ]
                        }]
                    });
                    chart.render();

                }
            </script>
        </head>
        <body>
        <div id="chartContainer" style="height: 370px; width: 100%;"></div>
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        </body>
        </html>
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
                    <td>{{number_format($item->prices, 0, '.', '.')}}<sup>đ</sup></td>
                    <td>{{10-$item->quantity}}</td>
                    <td>{{number_format($item->prices * (10-$item->quantity), 0, '.', '.')}}<sup>đ</sup></td>
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
                    <td><b><p style="color: blue;">Total income : {{number_format($total, 0, '.', '.')}}<sup>đ</sup></p></b></td>
                </tr>
            @endif
            </tbody>
        </table>
        <div class="category-right-bottom-items">
        <p><span></span>{{$allItems->links("pagination::bootstrap-4")}}<span></span></p>
        </div>
    </div>
    </html>
@endsection
