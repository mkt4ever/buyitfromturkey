@extends('layout.app', ["header" => "inner-page"])

@section('content')
<div class="page-content gray-bg ">
    <div class="container">
        <div class="contact-sec">
            <div class="row">
                <div class="col-md-12 col-lg-12 col-xl-6 text" data-aos="fade-up" data-aos-duration="1000">
                    <div class="content">
                        <h3>
                            CONTACT
                            <span>US</span>
                        </h3>
                        <p>You can reach out to admission and visa experts from Monday to Friday through Whattsapp
                            chat or email.</p>
                        <div class="list">
                            <li>
                                <h5>Location</h5>
                                <h6>{{$contactUs->address}}</h6>
                            </li>
                            <li>
                                <div class="icon">
                                    <img src="{{asset('img/icon/ceposta.svg')}}" alt="">
                                </div>
                                <div class="details">
                                    <h4><strong>Contact</strong> Us</h4>
                                    <a href="mailto:{{$contactUs->email}}">{{$contactUs->email}}</a>
                                </div>
                            </li>
                            <li>
                                <div class="icon">
                                    <img src="{{asset('img/icon/cphon.svg')}}" alt="">
                                </div>
                                <div class="details">
                                    <h4>Phone</h4>
                                    <a href="tel:{{$contactUs->phone1}}">{{$contactUs->phone1}}</a>
                                </div>
                            </li>
                        </div>
                        <div class="social-media">
                            <h4><span>Social</span> Media</h4>
                            <ul>
                                @if($contactUs->facebook)<li><a href="{{$contactUs->facebook}}"><img src="{{asset('img/icon/cfacebook.svg')}}" alt=""></a></li>@endif
                                @if($contactUs->youtube)<li><a href="{{$contactUs->youtube}}"><img src="{{asset('img/icon/cyoutube.svg')}}" alt=""></a></li>@endif
                                @if($contactUs->instagram)<li><a href="{{$contactUs->instagram}}"><img src="{{asset('img/icon/cinstagram.svg')}}" alt=""></a></li>@endif
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-12 col-xl-6 form" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="200">
                    <div class="content">
                        <form action="{{localeRoute('contactUs.store')}}" method="post" id="contact-form">
                        @csrf
                        <div class="row">
                            <div class="col-md-6 col-xl-6 col-lg-6  mb-3 item">
                                <label class="form-label">Name</label>
                                <input type="text" name="first_name" class="form-control" required="" placeholder="Your name">
                            </div>
                            <div class="col-md-6 col-xl-6 col-lg-6  mb-3 item">
                                <label class="form-label">Last Name</label>
                                <input type="text" name="last_name" class="form-control" required="" placeholder="Last name">
                            </div>
                            <div class="col-md-6 col-xl-6 col-lg-6  mb-3 item inputicon">
                                <label class="form-label">Email</label>
                                <div class="inp-box">
                                    <div class="icon">
                                        <img src="{{asset('img/icon/loginat.svg')}}" alt="">
                                    </div>
                                    <input type="email" class="form-control" name="email" required="" placeholder="email">
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-6 col-lg-6  mb-3 item">
                                <label class="form-label">Subject</label>
                                <input type="text" name="subject" class="form-control" required="" placeholder="Subject">
                            </div>
                            <div class="col-md-12 mb-3 item">
                                <label class="form-label">Message</label>
                                <textarea class="form-control" name="message" id="" cols="30" rows="4"
                                    placeholder="Your Message" required></textarea>
                            </div>
                            <div class="col-md-12 mb-3 item">
                                <div class="form-check custom-checkbox checkbox-primary">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" required>
                                    <label class="form-check-label" for="flexCheckChecked">
                                        Vitae Elementum Metus Condimentum Vel. <a href="">Morbi Accumsan</a> Quis
                                        Purus Vel Consectetu
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-12 mb-3 item">
                                <div class="row">
                                    <div class="col-md-6"></div>
                                    <div class="col-md-6 action">
                                        {!! htmlFormButton(text('Send').' <div class="icon"><i class="fa-solid fa-arrow-right"></i></div>', ['class' => "btn btn-primary icon-btn"]) !!}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="faq-sec">
            <div class="title" data-aos="fade-up" data-aos-duration="1000">
                <h3>FAQ</h3>
                <p> All the answers you are looking for are here</p>
            </div>
            <div class="boxes" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="200">
                <div class="main-content">
                    <div class="accordion accordion-flush" id="accordionFlushExample">
                        @foreach ($faqs as $faq)
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button @if (!$loop->first) collapsed @endif" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#flush-collapse{{$faq->id}}" aria-expanded="false"
                                        aria-controls="flush-collapse{{$faq->id}}">
                                        {{$faq->title}}
                                    </button>
                                </h2>
                                <div id="flush-collapse{{$faq->id}}" class="accordion-collapse collapse @if ($loop->first) show @endif"
                                    data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        <div class="text">
                                            <p>
                                                {{$faq->content}}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                        </div>
                        <div class="show-more">
                            <button>
                                <span class="more">Show More</span>
                                <span class="less">Show Less</span>
                                 <i class="fa-solid fa-chevron-down"></i></button>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection