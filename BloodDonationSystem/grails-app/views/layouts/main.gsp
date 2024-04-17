<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <g:layoutHead/>
</head>

<body>

<div class="sidebar">
    <nav>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li><a href="#">Doner</a></li>
            <li><a href="#">Blood Records</a></li>
        </ul>
        <hr color="white">
    </nav>
    <div class="user">
        <sec:ifLoggedIn>
            <h4>Hello <sec:loggedInUserInfo field='username'/></h4>
            <button ><a href="#" >Logout</a></button>
        </sec:ifLoggedIn>
        <sec:ifNotLoggedIn>
            <button ><a href="/login/auth" >LogIn</a></button>
        </sec:ifNotLoggedIn>
    </div>
</div>
<div class="col-md-9 content">
    <g:layoutBody/>
</div>

<asset:javascript src="application.js"/>
</body>
</html>
