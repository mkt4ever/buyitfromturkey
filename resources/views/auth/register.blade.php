@extends('layout.app', ["header" => "inner-page"])

@section('content')
<div class="page-content gray-bg">
    <div class="login-page">
        <div class="container">
            <div class="login-signup register" data-aos="fade-up" data-aos-duration="1000">
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
                            <form method="POST" action="{{ localeRoute('register') }}" class="needs-validation">
                                @csrf
                                <div class="row">

                                    <div class="mb-3 item inputicon col-md-6">
                                        <label class="form-label">Name Surname</label>
                                        <div class="inp-box">
                                            <div class="icon">
                                                <img src="{{asset('img/icon/profile.svg')}}" alt="">
                                            </div>
                                            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>
                                        </div>
                                    </div>
                                    <div class="mb-3 item inputicon col-md-6">
                                        <label class="form-label">Enter your email</label>
                                        <div class="inp-box">
                                            <div class="icon">
                                                <img src="{{asset('img/icon/loginat.svg')}}" alt="">
                                            </div>
                                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
                                        </div>
                                    </div>
                                    <div class="mb-3 item inputicon col-md-6">
                                        <label class="form-label">Birth</label>
                                        <div class="row form-group">
                                            <div class="">
                                                <div class="input-group date" id="datepicker">
                                                    <input type="text" name="birth_date" class="form-control @error('birth_date') is-invalid @enderror" value="{{ old('birth_date') ?? '.. /.. /....'}}" required>
                                                    <span class="input-group-append">
                                                        <span class="input-group-text bg-white color-primary">
                                                           <img src="{{asset('img/icon/calender.svg')}}" alt="">
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-3 item inputicon col-md-6">
                                        <label class="form-label">Country</label>
                                        <div class="inp-box">
                                            <select class="nice-select" required name="country">
                                                <option data-display="Country">Country</option>
                                                @foreach($countries as $code => $country)
                                                <option value="{{$code}}" {{old('country') == $code ? "selected" : ""}}>{{$country}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="mb-3 item inputicon col-md-6">
                                        <label class="form-label">Password </label>
                                        <div class="inp-box">
                                            <div class="icon">
                                                <img src="{{asset('img/icon/lock.svg')}}" alt="">
                                            </div>
                                            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
                                        </div>
                                    </div>
                                    <div class="mb-3 item inputicon col-md-6">
                                        <label class="form-label">Confirm Password</label>
                                        <div class="inp-box">
                                            <div class="icon">
                                                <img src="{{asset('img/icon/lock.svg')}}" alt="">
                                            </div>
                                            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                                        </div>
                                    </div>
                                </div>

                                <div class="mb-3 item action">
                                    <button type="submit" class="btn btn-secondary icon-btn">Register <div class="icon"><i
                                                class="fa-solid fa-arrow-right"></i></div></button>
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
                            <p>If you already have an account, <a href="{{localeRoute('login')}}">Login.</a></p>

                        </div>
                        <div class="privacy">
                            <p>By proceeding, you are agreeing to <a href="">Copy.ai's Terms of Service</a> and <a
                                    href="">Privacy Notice</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection