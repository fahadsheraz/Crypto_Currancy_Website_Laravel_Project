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
	<meta property="og:image" content="https://zenix.dexignzone.com/xhtml/favicon1.png">
	<meta name="format-detection" content="telephone=no">
    <title>{{ $title }} | {{$set->site_name}} </title>
    <!-- Favicon icon -->
    <link rel="shortcut icon" href="{{url('/')}}/asset/images/favicon.jpg" />
	<link href="{{url('/')}}/asset/front/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="{{url('/')}}/asset/front/stylesheet">
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
                                    <h4 class="text-center mb-4">Sign up your account</h4>
                                    @if($set->registration==1)
                                    <form action="{{route('submitregister')}}" method="post">
                                      @csrf
                                      <div class="form-group">
                                            <label class="mb-1"><strong>Name</strong></label>
                                            <input type="text" class="form-control" placeholder="Enter Your Name" name="name">
                                        </div>
                                        @if ($errors->has('name'))
                                      <span class="error form-error-msg ">
                                      {{ $errors->first('name') }}
                                      </span>
                                        @endif
                                        <div class="form-group">
                                            <label class="mb-1"><strong>Username</strong></label>
                                            <input type="text" class="form-control" placeholder="Enter Your Username" name="username">
                                        </div>
                                        @if ($errors->has('username'))
                                      <span class="error form-error-msg ">
                                      {{ $errors->first('username') }}
                                      </span>
                                        @endif
                                        <div class="form-group">
                                            <label class="mb-1"><strong>Email</strong></label>
                                            <input type="email" class="form-control" placeholder="Enter Your Email" name="email">
                                        </div>
                                        @if ($errors->has('email'))
                                      <span class="error form-error-msg ">
                                       {{ $errors->first('email') }}
                                       </span>
                                       @endif
                                       <div class="form-group">
                                            <label class="mb-1"><strong>Phone</strong></label>
                                            <input type="phone" class="form-control" placeholder="Enter Your Phone" name="phone">
                                        </div>
                                       @if ($errors->has('phone'))
                            <span class="error form-error-msg ">
                                {{ $errors->first('phone') }}
                            </span>
                        @endif
                                        <div class="form-group">
                                            <label class="mb-1"><strong>Password</strong></label>
                                            <input type="password" placeholder="Enter Your Password" class="form-control" value="Password" name="password">
                                        </div>
                                        @if ($errors->has('password'))
                                      <span class="error form-error-msg ">
                                       {{ $errors->first('password') }}
                                       </span>
                                       @endif
                                       <div class="form-group">
                                            <label class="mb-1"><strong>Confirm Password</strong></label>
                                       <input class="form-control" placeholder="Re-type Password" type="password" name="password_confirmation">
                                       </div>
                                       
                                        <div class="text-center mt-4">
                                            <button type="submit" class="btn btn-primary btn-block">Sign Me Up</button>
                                        </div>
                                    </form>
                                    @else
                                  <div class="text-dark text-center mt-2 mb-3"><strong>We are not currenctly accepting new users</strong></div>
                                  @endif
                                    <div class="new-account mt-3">
                                        <p>Already have an account? <a class="text-primary" href="{{url('/login')}}">Sign in</a></p>
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
