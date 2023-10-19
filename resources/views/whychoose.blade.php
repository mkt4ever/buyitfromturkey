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
                        {!!text('why_choose_turkey_page_title')!!}
                    </h5>
                </div>
                <div class="col-md-12 col-lg-8 col-xl-8 col-xxl-8 center">
                    <p>
                        {!! text('why_choose_turkey_page_content') !!}
                    </p>
                </div>
                <div class="right">
                    <img src="{{asset('img/chooseus.png')}}" alt="">
                </div>
            </div>
        </div>

        <div class="advantages-section">
            <div class="image">
                <img src="{{asset('img/map.png')}}" alt="">
            </div>
            <div class="boxes-sec">
                <div class="title">
                    <h3>{{text('Advantages')}}</h3>
                </div>
                <div class="boxes">
                    <div class="row">
                        @foreach ($advantages as $advantage)

                            <div class="col-md-6 col-lg-4 col-xl-3 item">
                                <div class="details">

                                    <div class="content">
                                        <h3>{{ $advantage->title }}</h3>
                                        <p>{!! $advantage->content !!}</p>
                                    </div>
                                </div>
                            </div>

                        @endforeach
                        

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- page content  ==---------------------------- -->



@endsection