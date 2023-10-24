<section class="footerbanner-section">
    <div class="background">
        <div class="col-6 col-md-6 item left"></div>
        <div class="col-6 col-md-6 item right"></div>
    </div>
    <div class="bottom">
        <div class="container">
            <div class="row">
                <div class="col-6 col-md-6 left">
                    <div class="content">
                        <div class="icon">
                            <img src="{{asset('img/icon/shopper.svg')}}" alt="shopper">
                        </div>
                        <div class="text">
                            <h1>{!! text('homepage_get_an_offer_title') !!}</h1>
                        </div>
                        <div class="action">
                            <a href="{{localeRoute('offer.store')}}" class="btn btn-primary icon-btn">{{text('Get_an_Offer')}} <div class="icon"><i
                                        class="fa-solid fa-arrow-right"></i></div></a>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-6 right">
                    <div class="content">
                        <div class="icon">
                            <img src="{{asset('img/icon/seller.svg')}}" alt="seller">
                        </div>
                        <div class="text">
                            <h1>{!! text('homepage_make_an_application_title') !!}</h1>
                        </div>
                        <div class="action">
                            <a href="{{localeRoute('application.store')}}" class="btn btn-secondary icon-btn"><span>{{text('Make_an_application')}}</span>
                                <div class="icon"><i class="fa-solid fa-arrow-right"></i></div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</section>
