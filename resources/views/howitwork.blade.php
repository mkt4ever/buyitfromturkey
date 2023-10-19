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
                        {!! text('homepage_works_title') !!}
                    </h5>
                </div>
                <div class="col-md-12 col-lg-8 col-xl-8 col-xxl-8 center">
                    <p>
                        {!! text('how_it_works_brief') !!}
                    </p>
                </div>
                <div class="right">
                    <img src="{{asset('img/png/dddd.png')}}" alt="">
                </div>
            </div>
        </div>
    </div>

    <div class="howitblogs-section">
        <div class="boxes">
            <div class="container">
                <div class="">
                    <div class="row">
                        <div class=" items right">
                            <div class="col-md-12 col-lg-8 item">
                                <div class="row">
                                    <div class="image  col-7 col-md-5 col-lg-5">
                                        <img src="{{asset('img/illustrations/works1.svg')}}" alt="">
                                    </div>
                                    <div class="text col-md-12 col-lg-7">
                                        <div class="accordion" id="accordionExample">
                                            <div class="accordion-item">
                                                <h2 class="accordion-header">
                                                    <button class="accordion-button collapsed" type="button"
                                                        data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                                        aria-expanded="false" aria-controls="collapseTwo">

                                                        {{text('How_it_works_P1_title')}}

                                                    </button>
                                                </h2>
                                                <div id="collapseTwo" class="accordion-collapse collapse"
                                                    data-bs-parent="#accordionExample">
                                                    <div class="accordion-body">
                                                        <div class="text-sec">
                                                            <p>

                                                                {{text('How_it_works_P1_content')}}

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" items left">
                            <div class="col-md-12 col-lg-8 item">
                                <div class="row">
                                    <div class="image  col-7 col-md-5 col-lg-5">
                                        <img src="{{asset('img/illustrations/works2.svg')}}" alt="">
                                    </div>
                                    <div class="text col-md-12 col-lg-7">
                                        <div class="accordion" id="accordionExample">
                                            <div class="accordion-item">
                                                <h2 class="accordion-header">
                                                    <button class="accordion-button collapsed" type="button"
                                                        data-bs-toggle="collapse" data-bs-target="#collapse4"
                                                        aria-expanded="false" aria-controls="collapse4">

                                                        {{text('How_it_works_P2_title')}}

                                                    </button>
                                                </h2>
                                                <div id="collapse4" class="accordion-collapse collapse"
                                                    data-bs-parent="#accordionExample">
                                                    <div class="accordion-body">
                                                        <div class="text-sec">
                                                            <p>
                                                                {{text('How_it_works_P2_content')}}
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="items right">
                            <div class="col-md-12 col-lg-8 item">
                                <div class="row">
                                    <div class="image  col-7 col-md-5 col-lg-5">
                                        <img src="{{asset('img/illustrations/works4.svg')}}" alt="">
                                    </div>
                                    <div class="text col-md-12 col-lg-7">
                                        <div class="accordion" id="accordionExample">
                                            <div class="accordion-item">
                                                <h2 class="accordion-header">
                                                    <button class="accordion-button collapsed" type="button"
                                                        data-bs-toggle="collapse" data-bs-target="#collapse1"
                                                        aria-expanded="false" aria-controls="collapse1">

                                                        {{text('How_it_works_P4_title')}}

                                                    </button>
                                                </h2>
                                                <div id="collapse1" class="accordion-collapse collapse"
                                                    data-bs-parent="#accordionExample">
                                                    <div class="accordion-body">
                                                        <div class="text-sec">
                                                            <p>
                                                                {{text('How_it_works_P4_content')}}
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="items left">
                            <div class="col-md-12 col-lg-8 item">
                                <div class="row">
                                    <div class="image  col-7 col-md-5 col-lg-5">
                                        <img src="{{asset('img/illustrations/works3.svg')}}" alt="">
                                    </div>
                                    <div class="text col-md-12 col-lg-7">
                                        <div class="accordion" id="accordionExample">
                                            <div class="accordion-item">
                                                <h2 class="accordion-header">
                                                    <button class="accordion-button collapsed" type="button"
                                                        data-bs-toggle="collapse" data-bs-target="#collapse3"
                                                        aria-expanded="false" aria-controls="collapse3">

                                                        {{text('How_it_works_P3_title')}}

                                                    </button>
                                                </h2>
                                                <div id="collapse3" class="accordion-collapse collapse"
                                                    data-bs-parent="#accordionExample">
                                                    <div class="accordion-body">
                                                        <div class="text-sec">
                                                            <p>
                                                                {{text('How_it_works_P3_content')}}
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="product-service">
        <div class="container">
            <div class="container-content col-md-9 col-lg-6">
                <div class="pr-text">
                    <h5>
                        {!! text('how_it_works_footer_brief') !!}
                    </h5>
                </div>
                <div class="image">
                    <div class="content">
                        <img src="{{asset('img/illustrations/world.svg')}}" alt="">
                    </div>
                </div>
            </div>

        </div>
    </div>


</div>
<!-- page content  ==---------------------------- -->


@endsection