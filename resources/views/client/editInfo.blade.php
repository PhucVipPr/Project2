<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{asset('css/info.css')}}">
    <title>Your Info</title>
</head>
<body>

<form action="{{url('/client/'.$infos->id.'/edit')}}" method="POST">
    @csrf
    @method('PUT')
    <h1>Change Info</h1>
            <fieldset>
                <legend><span class="number">1</span> Your basic info</legend>

                <label for="name">Name:</label>
                <input type="text" value="{{$infos->name}}" id="name" name="name" >

                <label for="mail">Email:</label>
                <input type="email" id="mail" value="{{$infos->email}}" name="email" >

                <label for="mail">Password :</label>
                <input type="password" id="mail" value="{{$infos->password}}"  readonly>

                <label for="password">PhoneNumber:</label>
                <input type="number" id="phone" value="{{$infos->phone}}" name="phone" >

                <label>Address:</label>
                <select name="address">
                    <option>Miền Bắc</option>
                    <option>Miền Nam</option>
                    <option>Miền Trung</option>
                </select>
            </fieldset>
    <button type="submit">Confirm Edit</button>
</form>
<form>
            <form action="{{url('client/home')}}" method="GET">
                <button type="submit">Come back</button>
            </form>
</form>

</body>
</html>
