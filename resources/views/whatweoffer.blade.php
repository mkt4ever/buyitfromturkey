@extends('layout.app')


@section('content')


 <!-- banner ==---------------------------- -->
 <section class="page-banner">
    <div class="content">
        <div class="image" style="background-image: url('{{Voyager::image($coverImage->image)}}');">
        </div>
    </div>
</section>
<!-- banner ==---------------------------- -->

<!-- page content  ==---------------------------- -->
<div class="page-content">
    <div class="container">
        <div class="whychoose">
            <div class="row">
                <div class="col-5 col-md-5 col-lg-2 left">
                    <h5>
                        {!! text('what_we_offer_page_title') !!}
                    </h5>
                </div>
                <div class="col-md-12 col-lg-8 col-xl-8 col-xxl-8 center">
                    <p>
                        {!! text('what_we_offer_page_content') !!}
                    </p>
                </div>
                <div class=" right">
                    <img src="{{asset('img/chooseus.png')}}" alt="">
                </div>
            </div>
        </div>
        </div>

        <div class="whatweoffer-section">

            @foreach ($our_offers as $offer)
                <div class="item">
                    <div class="container">
                        <div class="content">
                            <div class="icon">
                                <img src="{{parse_file($offer->logo)}}" alt="">
                            </div>
                            <div class="text">
                                <h6>{{$offer->title}}</h6>
                                <p>{{$offer->content}}</p>
                            </div>
                        </div>
                    </div> 
                </div>
            @endforeach
            


        </div>
</div>
<!-- page content  ==---------------------------- -->


@endsection