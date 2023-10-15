<section class="aboutus-section">
    <div class="container">
        <div class="boxes">
            <div class="top">
                <div class="row">
                    <div class="col-md-12 col-lg-9 col-xl-8 text">
                        <div class="left col-md-4 col-xl-3">
                            <h5>
                                {!! text('homepage_aboutUs_title') !!}
                            </h5>
                        </div>
                        <div class="right col-md-8 col-xl-9">
                            <p>
                                {!! text('homepage_aboutUs_brief') !!}
                            </p>
                            <a href="" class="btn btn-primary icon-btn">{{ text('More_info') }} <div class="icon"><i
                                        class="fa-solid fa-arrow-right"></i></div></a>
                        </div>
                        <div class="sm-boxes col-md-12">
                            <div class="m-title">
                                <h3>{{text('homepage_aboutUs_offers_title')}}</h3>
                            </div>
                            <div class="lists">
                                <div class="row">
                                    @foreach ($offers as $offer)

                                        <div class="item col-6 col-md-4">
                                            <div class="content">
                                                <div class="icon">
                                                    <img src="{{ parse_file($offer->logo) }}" alt="">
                                                </div>
                                                <div class="text">
                                                    <h6>{{ $offer->title }}</h6>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    @endforeach
                                    


                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-3 col-xl-4 main-image">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
