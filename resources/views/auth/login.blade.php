@extends('layout.app', ["header" => "inner-page"])

@section('content')
<div class="page-content gray-bg">
    <div class="login-page">
        <div class="container">
            <div class="login-signup" data-aos="fade-up" data-aos-duration="1000">
                <div class="content">
                    <div class="title">
                        <h3>
                            LOGIN
                            <span>WELCOME! </span>
                        </h3>
                        <p>If you have an account or registered via google or facebook, log in.</p>
                    </div>
                    <div class="box">
                        <div class="form-sec">
                            <form method="POST" action="{{ localeRoute('login') }}" class="needs-validation" novalidate="">
                                @csrf
                                <div class="mb-3 item inputicon">
                                    <label class="form-label">Enter your email</label>
                                    <div class="inp-box">
                                        <div class="icon">
                                            <img src="{{asset('img/icon/loginat.svg')}}" alt="">
                                        </div>
                                        <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                                        
                                    </div>
                                </div>
                                <div class="mb-3 item inputicon">
                                    <label class="form-label">Password </label> 
                                    <div class="inp-box">
                                        <div class="icon">
                                        <img src="{{asset('img/icon/lock.svg')}}" alt="">
                                            
                                        </div>
                                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                        @error('password')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                        <div class="pass-reset">
                                        <a href="{{ localeRoute('password.request') }}">Forget Password</a>
                                    </div>
                                    </div>
                                </div>
                                <div class="mb-3 item action"> 
                                    <button type="submit" class="btn btn-secondary icon-btn">Login <div class="icon"><i class="fa-solid fa-arrow-right"></i></div></button>
                                </div>
                            </form>
                        </div>
                        <div class="other">
                            <div class="or"><span>or</span></div>
                            <ul>
                            <li class="google">
                                    <a href="">
                                        <div class="icon">
                                        <img src="{{asset('img/icon/google.svg')}}" alt="">
                                        </div>
                                        Continue with Google
                                    </a>
                                </li>
                                <li class="facebook">
                                    <a href="">
                                        <div class="icon">
                                    <img src="{{asset('img/icon/lfacebook.svg')}}" alt="">

                                        </div>

                                    Continue with Facebook
                                    </a>
                                </li>
                               
                            </ul>
                        </div>
                    </div>
                    <div class="orsignup">
                        <div class="account">
                        <p>If you don't have an account, <a href="{{ localeRoute('register') }}">register.</a></p>

                        </div>
                        <div class="privacy">
                        <p>By proceeding, you are agreeing to <a href="">Copy.ai's Terms of Service</a> and <a href="">Privacy Notice</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
