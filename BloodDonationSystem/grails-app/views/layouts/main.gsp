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

<div class="container-fluid">
    <div class="row">
        <div class="col-md-3 sidebar">
            <div class="sidebar-content">
                <ul class="list-unstyled">
                    <li>Home</li>
                    <li>About</li>
                </ul>
            </div>
            <div class="user-info mt-auto">
                <sec:ifLoggedIn>
                    <sec:loggedInUserInfo field='username'/>
                </sec:ifLoggedIn>
                <sec:ifNotLoggedIn>
                    <a  href="/login/auth">
                        LogIn
                    </a>

                </sec:ifNotLoggedIn></div>
        </div>
        <div class="col-md-9 content">
            <g:layoutBody/>
        </div>
    </div>
</div>

<asset:javascript src="application.js"/>
</body>
</html>
