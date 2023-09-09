<!DOCTYPE html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
	<meta name="author" content="">
	<meta name="robots" content="">
    <meta name="viewport" content="width=device-width,initial-scale=1">
	<meta name="description" content="dollarjpt - Crypto Admin Dashboard">
	<meta property="og:title" content="dollarjpt - Crypto Admin Dashboard">
	<meta property="og:description" content="dollarjpt - Crypto Admin Dashboard">
    <link rel="shortcut icon" href="{{url('/')}}/asset/images/favicon.jpg" />
	<meta name="format-detection" content="telephone=no">
    <title></title>
    <!-- Favicon icon -->
    <link rel="shortcut icon" href="{{url('/')}}/asset/images/favicon.jpg" />
	<link href="{{url('/')}}/asset/front/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
    <link href="{{url('/')}}/asset/front/css/style.css" rel="stylesheet">

</head>

<body class="vh-100">
    
    <div class="authincation h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                                <div class="auth-form">
									<div class="text-center mb-3">
										<img src="{{url('/')}}/asset/front/images/logo1.png" alt="" style="width:316px">
									</div>
                                    <h4 class="text-center mb-4">Sign in your account</h4>
                                    <form role="form" action="{{url('/login')}}" method="post">
                                    @csrf
                                        <div class="form-group">
                                            <label class="mb-1"><strong>Enter Your Username</strong></label>
                                            <input type="text" class="form-control" placeholder="Enter Your Username" name="username">
                                            @if ($errors->has('username'))                                                                  
                        <span class="error form-error-msg ">
                                <strong>{{ $errors->first('username') }}</strong>
                            </span>
                    @endif
                     
                                        </div>
                          
                                        <div class="form-group">
                                            <label class="mb-1"><strong>Password</strong></label>
                                            <input type="password" class="form-control" placeholder="Enter Password" name="password">
                                        </div>
                                        <div class="form-row d-flex justify-content-between mt-4 mb-2">
                                            
                                            <div class="form-group">
                                                <a href="{{route('user.password.request')}}">Forgot Password?</a>
                                            </div>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary btn-block">Sign Me In</button>
                                        </div>
                                    </form>
                                    <div class="new-account mt-3">
                                        <p>Don't have an account? <a class="text-primary" href="{{route('register')}}">Sign up</a></p>
                                    </div>


                                    <div class="text-center" style="font-weight:700">
                                    <a href="https://dollarjpt.com" >HOME PAGE</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
       
    </div>


    <!--**********************************
        Scripts
    ***********************************-->
    <!-- Required vendors -->
    <script src="{{url('/')}}/asset/front/vendor/global/global.min.js"></script>
	<script src="{{url('/')}}/asset/front/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="{{url('/')}}/asset/front/js/custom.min.js"></script>
	<script src="{{url('/')}}/asset/front/js/deznav-init.js"></script>
    <script src="{{url('/')}}/asset/front/js/demo.js"></script>
    <script src="{{url('/')}}/asset/front/js/styleSwitcher.js"></script>
</body>
</html>



