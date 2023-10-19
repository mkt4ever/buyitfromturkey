@extends('layout.app', ["header" => "inner-page"])



@section('content')


<!-- page content  ==---------------------------- -->
<div class="page-content gray-bg">
    <div class="applicationf-page">
        <div class="container">
            <div class="main-title">
                <h3>
                      GET AN <span>OFFER</span>
                </h3>
                <p>Send us your questions and we'll answer them. All the answers you are looking for are here</p>
            </div>
            <div class="form-box">
                <div class="row">
                    <div class="col-md-6 col-xl-3 item">
                        <label class="form-label">Enter your email</label>
                        <div class="inp-box">

                            <input type="email" class="form-control" required="">
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3 item">
                        <label class="form-label">Enter your email</label>
                        <div class="inp-box">

                            <input type="email" class="form-control" required="">
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3 item">
                        <label class="form-label">Enter your email</label>
                        <div class="inp-box">

                            <input type="email" class="form-control" required="">
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3 item inputicon">
                        <label class="form-label">Enter your email</label>
                        <div class="inp-box">
                            <div class="icon">
                                <img src="assets/img/icon/loginat.svg" alt="">
                            </div>
                            <input type="email" class="form-control" required="">
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3 item">
                        <label class="form-label">Enter your email</label>
                        <div class="inp-box">

                            <input type="email" class="form-control" required="">
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3 item">
                        <label class="form-label">Enter your email</label>
                        <div class="inp-box">
                            <input type="email" class="form-control" required="">
                        </div>
                    </div>
                    <div class="col-md-6 item inputicon">
                        <label class="form-label">Enter your email</label>
                        <div class="inp-box">
                            <div class="icon">
                                <img src="assets/img/icon/copy.svg" alt="">
                            </div>
                            <input type="email" class="form-control" required="">
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3 item">
                        <label class="form-label">Enter your email</label>
                        <div class="inp-box">
                            <input type="email" class="form-control" required="">
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3 item">
                        <label class="form-label">Enter your email</label>
                        <div class="inp-box">
                            <select class="nice-select">
                                <option data-display="Select">Nothing</option>
                                <option value="1">Some option</option>
                                <option value="2">Another option</option>
                                <option value="3" disabled>A disabled option</option>
                                <option value="4">Potato</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3 item">
                        <label class="form-label">Enter your email</label>
                        <div class="inp-box">
                            <select class="nice-select">
                                <option data-display="Select">Nothing</option>
                                <option value="1">Some option</option>
                                <option value="2">Another option</option>
                                <option value="3" disabled>A disabled option</option>
                                <option value="4">Potato</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3 item">
                        <label class="form-label">Enter your email</label>
                        <div class="inp-box">
                            <select class="nice-select">
                                <option data-display="Select">Nothing</option>
                                <option value="1">Some option</option>
                                <option value="2">Another option</option>
                                <option value="3" disabled>A disabled option</option>
                                <option value="4">Potato</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 item">
                        <label class="form-label">Request</label> 
                        <textarea class="form-control" name="" id="" cols="30" rows="3" placeholder="Write a your Request"></textarea>
                    </div>
                    <div class="col-md-6 item">
                        <label class="form-label">Request</label> 
                        <textarea class="form-control" name="" id="" cols="30" rows="3" placeholder="Write a your Request"></textarea>
                    </div>
                    <div class="col-md-6 item form-terms mt-5">
                        <ul>
                            <li>
                            <div class="form-check custom-checkbox checkbox-primary">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked"
                                        >
                                    <label class="form-check-label" for="flexCheckChecked">
                                        Vitae Elementum Metus Condimentum Vel. <a href="">Morbi Accumsan</a> Quis
                                        Purus Vel Consectetu
                                    </label>
                                </div>
                            </li>
                            <li>
                            <div class="form-check custom-checkbox checkbox-primary">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked"
                                        >
                                    <label class="form-check-label" for="flexCheckChecked">
                                        Vitae Elementum Metus Condimentum Vel. <a href="">Morbi Accumsan</a> Quis
                                        Purus Vel Consectetu
                                    </label>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-6 item mt-5 form-terms">
                    <div class="row">
                                    <div class="col-md-6 captcha">captcha</div>
                                    <div class="col-md-6 action text-end">
                                        <a href="" class="btn btn-secondary icon-btn">Send <div class="icon"><i class="fa-solid fa-arrow-right"></i></div></a>
                                    </div>
                                </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- page content  ==---------------------------- -->


@endsection