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
                        {!! text('who_we_are_page_title') !!}
                    </h5>
                </div>
                <div class="col-md-12 col-lg-8 col-xl-8 col-xxl-8 center">
                    <h3>{{text('About_Us')}}</h3>
                    <p>
                        {!! text('About_us_content') !!}
                    </p>
                </div>
                <div class="right">
                    <img src="{{asset('img/about.png')}}" alt="">
                </div>
            </div>
        </div>

        <div class="video-sec">
            <div class="content">
                <a href="{{$contactUs->aboutUs_video}}" data-fancybox="gallery">
                    <img src="{{Voyager::image($contactUs->aboutUs_video_image)}}" alt="">
                    <div class="icon">
                        <i class="fa-solid fa-play"></i>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <div class="world-article">
        <div class="container">

            <div class="row">
                <div class="col-md-12 col-lg-4 text">
                    <h3>{{text('Our_Mission')}}</h3>
                    <p>
                        {{text('Our_mission_content1')}}
                    </p>
                </div>
                <div class="col-md-12 col-lg-4 image">
                    <img src="{{asset('img/aboutus.png')}}" alt="">
                </div>
                <div class="col-md-12 col-lg-4 text">
                    <h3>{{text('Our_Mission')}}</h3>
                    <p>
                        {{text('Our_mission_content2')}}
                    </p>
                </div>
            </div>
        </div>

    </div>



    <div class="ourvalue-section" data-aos="fade-up" data-aos-duration="1000">
            <div class="container">
                <div class="m-title">
                    <h3>{{text('Our_Values')}}</h3>
                </div>
                <div class="boxes">
                    <div class="nav nav-tabs" id="myTab" role="tablist">

                        @foreach ($values as $key => $value)
                            <div class="item col-md-2 nav-item">
                                <div class="icon">
                                    <button class="nav-link @if ($key == 0) active @endif" id="{{$value->slug}}-tab" data-bs-toggle="tab"
                                        data-bs-target="#{{$value->slug}}-tab-pane" type="button" role="tab"
                                        aria-controls="{{$value->slug}}-tab-pane" aria-selected="{{ $key == 0 ? 'true' : 'false' }}">

                                        <img src="{{ parse_file($value->logo) }}" alt="">

                                    </button>

                                </div>
                            </div>
                        @endforeach
                        

                    </div>
                </div>
                <div class="discreption">
                    <div class="tab-content" id="myTabContent">

                        @foreach ($values as $key => $value)
                            <div class="tab-pane fade @if ($key == 0) show active @endif" id="{{$value->slug}}-tab-pane" role="tabpanel"
                                aria-labelledby="{{$value->slug}}-tab" tabindex="0">
                                {!! $value->content !!}
                            </div>
                        @endforeach

                    </div>
                </div>

            </div>


        </div>


    <div class="team-section">
        <div class="container">
            <div class="main-title">
                <h3>
                    {!! text('team_section_brief') !!}
                </h3>
                <div class="line">
                    <span></span>
                </div>
                <div class="action">
                    <a href="" class="btn btn-primary icon-btn">{{text('More_info')}} <div class="icon"><i
                                class="fa-solid fa-arrow-right"></i></div></a>
                </div>
            </div>
            <div class="team-carousel">
                <div class="row">
                    <div class="col-md-12 col-lg-3 text">
                        <div class="text-content">
                        <h3>{!! text('our_founders_title') !!}</h3>
                        <p>
                            {!!text('our_founders_content') !!}
                        </p>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-9 boxes">
                        <div class="owl-carousel owl-theme" id="whoweare">

                            @foreach ($founders as $founder)
                                <div class="item">
                                    <div class="details">
                                        <div class="content">
                                            <a href="">
                                                <div class="image">
                                                    <img src="{{Voyager::image($founder->image)}}" alt="">
                                                </div>
                                                <div class="bottom-s">  
                                                    <div class="left">
                                                    <h4>{{$founder->name}}</h4>
                                                    <span>{{$founder->title}}</span>
                                                    </div>
                                                
                                                    <div class="icon">
                                                        <img src="{{asset('img/icon/email.png')}}" alt="">
                                                    </div>
                                                </div>
                                            </a>
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
</div>
<!-- page content  ==---------------------------- -->


@endsection



