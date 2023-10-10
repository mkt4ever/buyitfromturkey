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
        <div class="item">
            <div class="image">
                <img src="{{asset('img/slider.png')}}" alt="">
            </div>
            <div class="text">
                <div class="container">
                    <div class="content">
                        <h3>What Would You Like To <em>Get From Türkiye ?</em></h3>
                        <p>We Assist You In Buying Homes Or Land In Turkey. Request A Quote Now, Let Us Find Your
                            Perfect Property!</p>
                        <ul>
                            <li><a href="" class="btn btn-primary icon-btn">Get an Offer <div class="icon"><i
                                            class="fa-solid fa-arrow-right"></i></div></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="image">
                <img src="{{asset('img/slider2.png')}}" alt="">
            </div>
            <div class="text">
                <div class="container">
                    <div class="content">
                        <h3>What Would You Like To <em>Get From Türkiye ?</em></h3>
                        <p>We Assist You In Buying Homes Or Land In Turkey. Request A Quote Now, Let Us Find Your
                            Perfect Property!</p>
                        <ul>
                            <li><a href="" class="btn btn-primary icon-btn">Get an Offer <div class="icon"><i
                                            class="fa-solid fa-arrow-right"></i></div></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="social-media">
        <div class="content">

            <ul>
                <li><a href=""><img src="{{asset('img/icon/facebook.svg')}}" alt=""></a></li>
                <li><a href=""><img src="{{asset('img/icon/youtube.svg')}}" alt=""></a></li>
                <li><a href=""><img src="{{asset('img/icon/instagram.svg')}}" alt=""></a></li>
            </ul>
        </div>

    </div>
    <div class="categories-sec">
        <div class="container">
            <div class="items">
                <div class="boxes">
                    <div class="itemm">
                        <div class="content">
                            <a href="">
                                <h5>Real Estate</h5>
                                <div class="icon">
                                    <img src="{{asset('img/icon/realestate.svg')}}" alt="">
                                </div>
                                <div class="action">
                                    <i class="fa-solid fa-arrow-right"></i>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="itemm">
                        <div class="content">
                            <a href="">
                                <h5>Travel Around</h5>
                                <div class="icon">
                                    <img src="assets/img/icon/travel.svg" alt="">
                                </div>
                                <div class="action">
                                    <i class="fa-solid fa-arrow-right"></i>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="itemm">
                        <div class="content">
                            <a href="">
                                <h5>Get Beauty Service</h5>
                                <div class="icon">
                                    <img src="assets/img/icon/beauty.svg" alt="">
                                </div>
                                <div class="action">
                                    <i class="fa-solid fa-arrow-right"></i>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="itemm">
                        <div class="content">
                            <a href="">
                                <h5>Import Woman Bags</h5>
                                <div class="icon">
                                    <img src="assets/img/icon/bag.svg" alt="">
                                </div>
                                <div class="action">
                                    <i class="fa-solid fa-arrow-right"></i>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="itemm">
                        <div class="content">
                            <a href="">
                                <h5>Get Healthy</h5>
                                <div class="icon">
                                    <img src="{{asset('img/icon/healthy.svg')}}" alt="">
                                </div>
                                <div class="action">
                                    <i class="fa-solid fa-arrow-right"></i>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="itemm">
                        <div class="content">
                            <a href="">
                                <h5>Others</h5>
                                <div class="icon">
                                    <img src="{{asset('img/icon/basket.svg')}}" alt="">
                                </div>
                                <div class="action">
                                    <i class="fa-solid fa-arrow-right"></i>
                                </div>
                            </a>
                        </div>
                    </div>
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
                            <h3>Who are we?</h3>
                        </div>
                        <div class="icon">
                            <img src="{{asset('img/icon/zoom.png')}}" alt="">
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
