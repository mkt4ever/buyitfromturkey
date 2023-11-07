@extends('layout.app', ["header" => "inner-page"])



@section('content')


<!-- page content  ==---------------------------- -->
<div class="page-content gray-bg">
    <div class="applicationf-page">
        <div class="container">
            <div class="main-title">
                <h3>
                    {!!text('application_form_page_title')!!}
                </h3>
                <p>{{text('application_form_page_brief')}}</p>
            </div>
            <form id="application_form" action="{{localeRoute('application.store')}}" method="POST">
                @csrf
                <div class="form-box">
                    <div class="row">
                        <div class="col-md-6 col-xl-3 item">
                            <label class="form-label" for="name">{{ text('Name') }}</label>
                            <div class="inp-box">
                                <input type="text" class="form-control" id="name" name="name" required>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 item">
                            <label class="form-label" for="last_name">{{ text('Last_Name') }}</label>
                            <div class="inp-box">
                                <input type="text" class="form-control" id="last_name" name="last_name" required>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 item">
                            <label class="form-label" for="company_name">{{ text('Company_Name') }}</label>
                            <div class="inp-box">
                                <input type="text" class="form-control" id="company_name" name="company_name" required>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 item inputicon">
                            <label class="form-label" for="email">{{ text('Email') }}</label>
                            <div class="inp-box">
                                <div class="icon">
                                    <img src="{{asset('img/icon/loginat.svg')}}" alt="">
                                </div>
                                <input type="email" class="form-control" id="email" name="email" required>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 item">
                            <label class="form-label" for="sectors">{{ text('Sectors') }}</label>
                            <div class="inp-box">
                                <input type="text" class="form-control" id="sectors" name="sectors" required>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 item">
                            <label class="form-label" for="products_services">{{ text('Products_Services') }}</label>
                            <div class="inp-box">
                                <input type="text" class="form-control" id="products_services" name="products_services" required>
                            </div>
                        </div>
                        <div class="col-md-6 item inputicon">
                            <label class="form-label" for="link">{{ text('Link') }}</label>
                            <div class="inp-box">
                                <div class="icon">
                                    <img src="{{asset('img/icon/copy.svg')}}" alt="">
                                </div>
                                <input type="text" class="form-control" id="link" name="link" required>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 item">
                            <label class="form-label" for="quantity">{{ text('Quantity') }}</label>
                            <div class="inp-box">
                                <input type="number" class="form-control" id="quantity" name="quantity" required>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 item">
                            <label class="form-label" for="price_terms">{{ text('Price_Terms') }}</label>
                            <div class="inp-box">
                                <select class="nice-select" id="price_terms" name="price_terms">
                                    <option data-display="{{ text('Select') }}">Nothing</option>
                                    <option value="1">{{ text('Some option') }}</option>
                                    <option value="2">{{ text('Another option') }}</option>
                                    <option value="3" disabled>{{ text('A disabled option') }}</option>
                                    <option value="4">{{ text('Potato') }}</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 item">
                            <label class="form-label" for="payment_method">{{ text('Select_Payment') }}</label>
                            <div class="inp-box">
                                <select class="nice-select" id="payment_method" name="payment_method">
                                    <option data-display="{{ text('Select') }}">Nothing</option>
                                    <option value="1">{{ text('Some option') }}</option>
                                    <option value="2">{{ text('Another option') }}</option>
                                    <option value="3" disabled>{{ text('A disabled option') }}</option>
                                    <option value="4">{{ text('Potato') }}</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 item">
                            <label class="form-label" for="country">{{ text('Which_Country_do_you_reside_in?') }}</label>
                            <div class="inp-box">
                                <select class="nice-select" id="country" name="country">
                                    <option data-display="{{ text('Select') }}"></option>
                                    @foreach($countries as $code => $country)
                                    <option value="{{$code}}" {{old('country') == $code ? "selected" : ""}}>{{$country}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 item">
                            <label class="form-label" for="details">{{ text('Details') }}</label>
                            <textarea class="form-control" id="details" name="details" cols="30" rows="3" placeholder="{{ text('Write your Request') }}"></textarea>
                        </div>
                        <div class="col-md-6 item">
                            <label class="form-label" for="request">{{ text('Request') }}</label>
                            <textarea class="form-control" id="request" name="request" cols="30" rows="3" placeholder="{{ text('Write your Request') }}"></textarea>
                        </div>
                        <div class="col-md-6 item form-terms mt-5">
                            <ul>
                                <li>
                                    <div class="form-check custom-checkbox checkbox-primary">
                                        <input class="form-check-input" type="checkbox" id="flexCheckChecked1" name="terms_1" value="1" required>
                                        <label class="form-check-label" for="flexCheckChecked1">
                                            {{ text('I agree to the terms and conditions.') }}
                                        </label>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-check custom-checkbox checkbox-primary">
                                        <input class="form-check-input" type="checkbox" id="flexCheckChecked2" name="terms_2" value="1" required>
                                        <label class="form-check-label" for="flexCheckChecked2">
                                            {{ text('I agree to the privacy policy.') }}
                                        </label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-6 item mt-5 form-terms">
                            <div class="action text-end">
                                {!! htmlFormButton(text('Send').' <div class="icon"><i class="fa-solid fa-arrow-right"></i></div>', ['class' => "btn btn-primary icon-btn"]) !!}
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- page content  ==---------------------------- -->


@endsection
