@extends('layout.user')
@section('page-content')
    
<div class="main-title">
    <h3>{{text('Account_Settings')}}</h3>
    {{-- <div class="add-addres">
        <a href="">
            <span>Yeni Adres Ekle</span>
            <div class="icon">
                <i class="fa-solid fa-plus"></i>
            </div>
        </a>
    </div> --}}
</div>
<div class="sec-content">
    <div class="from-sec border-bottom">
        <form method="POST" action="{{ localeRoute('profile.update') }}" class="needs-validation">
            @csrf
            <div class="row">
                <div class="col-md-6 col-lg-4 mb-2 item inputicon">
                    <label class="form-label">Name Surname</label>
                    <div class="inp-box">
                        <div class="icon">
                            <img src="{{asset('img/icon/profile.svg')}}" alt="">
                        </div>
                        <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ Auth::user()->name }}" required autocomplete="name" autofocus>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-2 item inputicon">
                    <label class="form-label">your email</label>
                    <div class="inp-box">
                        <div class="icon">
                            <img src="{{asset('img/icon/loginat.svg')}}" alt="">
                        </div>
                        <input id="email" type="email" class="form-control" name="email" value="{{ Auth::user()->email }}" disabled required autocomplete="email">
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-2 item inputicon">
                    <label class="form-label">Birth</label>
                    <div class="row form-group">
                        <div class="">
                            <div class="input-group date" id="datepicker">
                                <input type="text" name="birth_date" class="form-control @error('birth_date') is-invalid @enderror" value="{{ Auth::user()->birth_date }}" required>
                                <span class="input-group-append">
                                    <span class="input-group-text bg-white color-primary">
                                       <img src="{{asset('img/icon/calender.svg')}}" alt="">
                                    </span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-2 item inputicon">
                    <label class="form-label">Country</label>
                    <div class="inp-box">
                        <select class="nice-select" required name="country">
                            <option data-display="Country">Country</option>
                            @foreach($countries as $code => $country)
                            <option value="{{$code}}" {{Auth::user()->country == $code ? "selected" : ""}}>{{$country}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-2 item">
                    <label class="form-label">Phone</label>
                    <input class="form-control phone-code" list="datalistOptions" type="text" name="phone" value="{{Auth::user()->phone}}"
                        placeholder="">
                </div>
            </div>

            <div class="mb-3 item action">
                <button type="submit" class="btn btn-secondary icon-btn">Register <div class="icon"><i
                            class="fa-solid fa-arrow-right"></i></div></button>
            </div>
        </form>
    </div>

    <div class="from-sec mt-5">
        <div class="title mb-3">
            <h3>Password</h3>
        </div>
        <form method="POST" action="{{ localeRoute('profile.changePassword') }}" class="needs-validation">
            @csrf
            <div class="row">
                <div class="col-md-6 col-lg-4 mb-2 item inputicon">
                    <label class="form-label">Current Password </label>
                    <div class="inp-box">
                        <div class="icon">
                            <img src="{{asset('img/icon/lock.svg')}}" alt="">
                        </div>
                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password_old" required autocomplete="new-password">
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-2 item inputicon">
                    <label class="form-label">Password </label>
                    <div class="inp-box">
                        <div class="icon">
                            <img src="{{asset('img/icon/lock.svg')}}" alt="">
                        </div>
                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-2 item inputicon">
                    <label class="form-label">Confirm Password</label>
                    <div class="inp-box">
                        <div class="icon">
                            <img src="{{asset('img/icon/lock.svg')}}" alt="">
                        </div>
                        <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                    </div>
                </div>
                <div class="col-md-12 mb-2 item inputicon mt-3">
                    <button type="submit" class="btn btn-secondary icon-btn">Submit <div class="icon"><i
                                class="fa-solid fa-arrow-right"></i></div></button>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection
@push('js')
<script>
    $(document).ready(function() {
        // $('#details').modal('show');
        $(".phone-code").intlTelInput({
            autoHideDialCode: false,
            nationalMode: false,
        });
    });
</script>
@endpush