@extends('layout.app', ["header" => "inner-page"])

@section('content')
<div class="page-content gray-bg">
    <div class="login-page">
        <div class="container">
            <div class="login-signup" data-aos="fade-up" data-aos-duration="1000">
                <div class="content">
                    <div class="title">
                        <h3>
                            EMAIL
                            <span>RESET! </span>
                        </h3>
                    </div>
                    <div class="box">
                        <div class="form-sec">
                            <form method="POST" action="{{ localeRoute('password.update') }}">
                                @csrf

                                <input type="hidden" name="token" value="{{ $token }}">

                                <div class="mb-3 item inputicon">
                                    <label for="email" class="form-label">{{ __('Email Address') }}</label>

                                    <div class="inp-box">
                                        <div class="icon">
                                            <img src="{{asset('img/icon/loginat.svg')}}" alt="">
                                        </div>
                                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                                    </div>
                                </div>

                                <div class="mb-3 item inputicon">
                                    <label for="password" class="form-label">{{ __('Password') }}</label>

                                    <div class="inp-box">
                                        <div class="icon">
                                            <img src="{{asset('img/icon/lock.svg')}}" alt="">
                                        </div>
                                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
                                    </div>
                                </div>

                                <div class="mb-3 item inputicon">
                                    <label for="password-confirm" class="form-label">{{ __('Confirm Password') }}</label>

                                    <div class="inp-box">
                                        <div class="icon">
                                            <img src="{{asset('img/icon/lock.svg')}}" alt="">
                                        </div>
                                        <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                                    </div>
                                </div>

                                <div class="row mb-0">
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-secondary icon-btn">{{ __('Reset Password') }} <div class="icon"><i class="fa-solid fa-arrow-right"></i></div></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
