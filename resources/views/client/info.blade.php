<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{asset('css/info.css')}}">
    <title>Your Info</title>
</head>
<body>

<form>

    <h1>Info</h1>
    @foreach($infos as $info)
        @if(Auth::id()==($info->id))
    <fieldset>

        <legend><span class="number">1</span> Your basic info</legend>

        <label for="name">Name:</label>
        <input type="text" value="{{$info->name}}" id="name" name="user_name" readonly>

        <label for="mail">Email:</label>
        <input type="email" id="mail" value="{{$info->email}}" name="user_email" readonly>

        <label for="mail">Password :</label>
        <input type="password" id="mail" value="{{$info->password}}" name="user_email" readonly>

        <label for="password">PhoneNumber:</label>
        <input type="number" id="phone" value="{{$info->phone}}" name="phone" readonly>

        <label>Address:</label>
        <input type="text" id="address" value="{{$info->address}}" name="address" readonly>

        <a href="{{url('/client/'.$info->id.'/edit')}}">Edit my info</a>
        @endif
        @endforeach
    </fieldset>
</form>
<form>
    <fieldset>

        <legend><span class="number">2</span> Do you want to</legend>

    </fieldset>
    <a href="{{url('client/home')}}">Come Back</a>

</form>
</body>
</html>
