<section class="slider-section">
    <div class="right-search-bar">
        <div class="m-content">

            <div class="bottom">
                <div class="title">
                    <h3>{{ text('right-search-bar-title') }}</h3>
                </div>
                <div class="search-box">
                    <input type="text" placeholder="{{ text('Searching') }}" class="form-control">
                    <div class="icon">
                        <img src="{{asset('img/icon/search.svg')}}" alt="">
                    </div>
                </div>
                <div class="boxes">
                    @foreach ($services as $service)

                        <div class="item">
                            <div class="content">
                                <a href="{{ $service->slug }}">
                                    <h5>{{ $service->title }}</h5>
                                    <div class="icon">
                                        <img src="{{ parse_file($service->image) }}" alt="">
                                    </div>
                                    <div class="action">
                                        <i class="fa-solid fa-arrow-right"></i>
                                    </div>
                                </a>
                            </div>
                        </div>

                    @endforeach


                </div>
            </div>

        </div>
    </div>
    <div class="owl-carousel owl-theme main-slider" id="slider">
        @foreach ($sliders as $slider)

            <div class="item">
                <div class="image">
                    <img src="{{ Voyager::image($slider->image) }}" alt="{{ $slider->title }}">
                </div>
                <div class="text">
                    <div class="container">
                        <div class="content">
                            <h3>{!! $slider->title !!}</h3>
                            <p>{{ $slider->brief }}</p>
                            @if($slider->link)
                            <ul>
                                <li><a href="{{ $slider->link }}" class="btn btn-primary icon-btn">{{text('Get_an_Offer')}} <div class="icon"><i
                                                class="fa-solid fa-arrow-right"></i></div></a></li>
                            </ul>
                            @endif
                        </div>
                    </div>
                </div>
            </div>

        @endforeach




    </div>

    <div class="social-media">
        <div class="content">

            <ul>
                <li><a href="{{ $contactUs->facebook }}"><img src="{{asset('img/icon/facebook.svg')}}" alt="{{ $contactUs->facebook }}"></a></li>
                <li><a href="{{ $contactUs->youtube }}"><img src="{{asset('img/icon/youtube.svg')}}" alt="{{ $contactUs->youtube }}"></a></li>
                <li><a href="{{ $contactUs->instagram }}"><img src="{{asset('img/icon/instagram.svg')}}" alt="{{ $contactUs->instagram }}"></a></li>
            </ul>
        </div>

    </div>
    <div class="categories-sec">
        <div class="container">
            <div class="items">
                <div class="boxes">
                    @foreach ($services as $service)

                        <div class="itemm">
                            <div class="content">
                                <a href="{{ $service->slug }}">
                                    <h5>{{ $service->title }}</h5>
                                    <div class="icon">
                                        <img src="{{ parse_file($service->image) }}" alt="">
                                    </div>
                                    <div class="action">
                                        <i class="fa-solid fa-arrow-right"></i>
                                    </div>
                                </a>
                            </div>
                        </div>

                    @endforeach


                </div>
            </div>
        </div>
    </div>

    <div class="slider-other">
        <div class="container">

            <div class="omline-support">
                <a href="">
                    <img src="{{asset('img/icon/online.svg')}}" alt="">
                </a>
            </div>
            <div class="whoweare">
                <div class="content">
                    <a href="">
                        <div class="image">
                            <img src="{{asset('img/weare.png')}}" alt="">
                        </div>
                        <div class="title">
                            <h3>{{ text('Who_are_we?') }}</h3>
                        </div>
                        <div class="icon">
                            <img src="{{asset('img/icon/zoom.png')}}" alt="">
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="slider-dots">
        <ul>
            <li class="active" id="active-item-indicator"></li>
            <li>{{str_pad($sliders->count(), 2, '0', STR_PAD_LEFT)}}</li>
        </ul>
    </div>
</section>
