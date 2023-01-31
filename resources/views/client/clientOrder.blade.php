<html>
<head>
    <link rel="stylesheet" href="{{asset('css/order.css')}}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="container-fluid my-5  d-flex  justify-content-center">
        <div class="card card-1">
            <div class="card-header bg-white">
                <form action="{{url('client/home')}}" method="GET">
                <button type="submit" >Back Home</button>
                </form>
                <div class="media flex-sm-row flex-column-reverse justify-content-between  ">
                    <div class="col my-auto"> <h4 class="mb-0">Here is your Order<span class="change-color"></span> </h4> </div>
                    <div class="col-auto text-center  my-auto pl-0 pt-sm-4"> <img class="img-fluid my-auto align-items-center mb-0 pt-3"  src="{{asset('images/logo3.png')}}" width="115" height="115"> <p class="mb-4 pt-0 Glasses"></p>  </div>
                </div>
            </div>
            @if($orderItems->count()==0)
                <h1>Nothing to see here~~</h1>
            @else
            <div class="card-body">
                <div class="row justify-content-between mb-3">
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
                        @foreach($orderItems as $item)
                            <tr>
                                <th scope="row">{{$item->name}}</th>
                                <td>{{$item->order_name}}</td>
                                <td>
                                    @if($item->order_status==0)
                                        Chua xu ly
                                    @elseif($item->order_status==1)
                                    Dang xu ly
                                    @elseif($item->order_status==2)
                                    Dang giao
                                    @else
                                    Da huy
                                    @endif
                                </td>
                                <td>
                                    <form action="{{url('client/'.$item->order_id.'/details')}}" method="GET">
                                        @csrf
                                        <button type="submit" >Check-Details </button>
                                    </form>
                                </td>
                            </tr>
    @endforeach
</tbody>
</table>
            </div>
        </div>
            @endif
    </div>
    </div>
</body>
</html>
