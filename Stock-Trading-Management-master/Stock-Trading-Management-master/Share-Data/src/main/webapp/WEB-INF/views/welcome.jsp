<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Stock Trading App</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        body {
            background-image: url('/images/logo.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .welcome-text {
            color: #e3dfc8;
            font-weight: bold;
            font-size: 28px;
            text-align: center;
            margin-bottom: 20px;
        }
        .get-started-btn {
            color: white;
            font-size: 30px;
            margin-bottom: 50px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="text-center">
            <p class="welcome-text"><b>WELCOME</b><br>Your Trading Journey Awaits!</p>
            <a class="btn btn-outline-warning btn-lg get-started-btn" href="/login" role="button">Get Started</a>
        </div>
    </div>
</body>
</html>
