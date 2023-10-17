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
                            <span>VERIFICATION! </span>
                        </h3>
                    </div>
                    <div class="box">
                        <div class="form-sec">

                    {{ __('Before proceeding, please check your email for a verification link.') }}
                    {{ __('If you did not receive the email') }},
                    <form method="POST" action="{{ route('verification.resend') }}">
                        @csrf
                        <div class="mb-3 item action"> 
                            <button type="submit" class="btn btn-secondary icon-btn">{{ __('click here to request another') }} <div class="icon"><i class="fa-solid fa-arrow-right"></i></div></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@push('js')
<script>
    @if (session('resent'))
        toastr.success("{{ __('A fresh verification link has been sent to your email address.') }}")
    @endif
</script>
@endpush
