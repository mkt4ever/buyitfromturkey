@extends('layout.app', ["header" => "inner-page"])

@section('content')

<div class="page-content gray-bg">
    <div class="products-section" data-aos="fade-up" data-aos-duration="1000">
        <div class="row">
            <div class="col-md-12 col-xl-6 map-sec">
                <div class="content">

                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d96305.2103368212!2d28.921036800000003!3d41.03536640000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2str!4v1695209146020!5m2!1sen!2str"
                        style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                    <div class="zoom-btn d-xl-block">
                        <button class="btn btn-primary icon-btn large">
                            {{text('Expand_Map')}}
                            <div class="icon"><i class="fa-solid fa-up-right-and-down-left-from-center"></i></div>
                        </button>
                        <button class="btn btn-primary icon-btn small">
                            Haritayı Küçült
                            <div class="icon"><i class="fa-solid fa-down-left-and-up-right-to-center"></i></div>
                        </button>
                    </div>
                </div>

            </div>
            <div class="col-md-12 col-xl-6 search-box" data-aos="fade-up" data-aos-duration="1000">
                <div class="top">
                    <div class="title">
                        <h3>
                            {!! text('products_and_services') !!}
                        </h3>
                    </div>
                    <div class="smsearch-box">
                        <form class="d-flex" method="GET">
                            <div class="action">
                                <button>
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </button>
                            </div>
                            <div class="item">
                                <div class="content">
                                    <select name="sectors" class="nice-select">
                                        <option data-display="Sectors" {{ request('sectors') == 'All' ? 'selected' : '' }}>{{ text('All') }}</option>
                                        @foreach ($products_sectores as $sector)
                                            <option value="{{ $sector->slug }}" {{ request('sectors') == $sector->slug ? 'selected' : '' }}>{{ $sector->title }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="item">
                                <div class="content">
                                    <select name="category" class="nice-select">
                                        <option data-display="Category" {{ request('category') == 'All' ? 'selected' : '' }}>{{ text('All') }}</option>
                                        @foreach ($products_category as $category)
                                            <option value="{{ $category->slug }}" {{ request('category') == $category->slug ? 'selected' : '' }}>{{ $category->title }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="item">
                                <div class="content">
                                    <select name="tag" class="nice-select">
                                        <option data-display="Tags" {{ request('tag') == 'All' ? 'selected' : '' }}>{{ text('All') }}</option>
                                        @foreach ($products_tags as $tag)
                                            <option value="{{ $tag->slug }}" {{ request('tag') == $tag->slug ? 'selected' : '' }}>{{ $tag->title }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="search-inp">
                                <input type="email" class="form-control" placeholder="{{ text('Searching') }}">
                            </div>
                            <div class="action mobile">
                                <button>
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                    
                    <div class="actions">
                        <ul>
                            <li><a href="{{localeRoute('products.index')}}" class="direction">{{text('Clear_Selection')}}</a></li>
                            <li><button>{{text('See_Results')}} ({{$productCount}}) <i class="fa-solid fa-arrow-down"></i></button></li>
                        </ul>
                    </div>
                </div>
                <div class="bottom">
                    <div class="video">
                    <video  width="" height="" muted autoplay loop>
                        <source src="{{asset('img/video/turkey.mp4')}}" type="video/mp4">  
                    </video> 
                    </div>
                    <div class="text">
                        <h3>{{text('Buy_it_From_Turkiye')}}</h3>
                    </div>
                </div>
                {{-- <div class="bottom">
                    <div class="owl-carousel owl-theme" id="product-carousel">
                        @foreach ($products_sliders as $slider)
                            <div class="item">
                                <div class="image">
                                    <img src="{{Voyager::image($slider->image)}}" alt="{{$slider->title}}">
                                    <div class="title-sec">
                                        <h3>{{$slider->title}}</h3>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div> --}}
            </div>

        </div>


        <div class="products-boxes" data-aos="fade-up" data-aos-duration="1000">
            <div class="container">
                <div class="title">
                    <h3>{{text('Search_Results')}}</h3>
                    <p>{{$productCount}} {{text('products_search_results')}}</p>
                    <div class="filter">
                        <ul>
                            @if (!empty(request('sectors')) && request('sectors') !== 'All')
                            <li>
                                <a href="#">
                                    Sectors: {{ request('sectors', 'All') }}
                                    <i class="fa-solid fa-xmark" onclick="resetQuery('sectors')"></i>
                                </a>
                            </li>
                            @endif
                    
                            @if (!empty(request('category')) && request('category') !== 'All')
                            <li>
                                <a href="#">
                                    Category: {{ request('category', 'All') }}
                                    <i class="fa-solid fa-xmark" onclick="resetQuery('category')"></i>
                                </a>
                            </li>
                            @endif
                    
                            @if (!empty(request('tag')) && request('tag') !== 'All')
                            <li>
                                <a href="#">
                                    Tag: {{ request('tag', 'All') }}
                                    <i class="fa-solid fa-xmark" onclick="resetQuery('tag')"></i>
                                </a>
                            </li>
                            @endif
                        </ul>
                    </div>
                </div>
                <div class="boxes" data-aos="fade-up" data-aos-duration="1000">
                    <div class="row">
                        @foreach ($products as $product)
                            <div class="col-md-6 col-lg-4 col-xl-3 item">
                                <div class="details">
                                    <div class="content">
                                        <a href="">
                                            <div class="image">
                                                <img src="{{Voyager::image($product->thumbnail_image)}}" alt="">
                                            </div>
                                            <div class="bottom-s">

                                                <h4>{{$product->title}}</h4>
                                                <div class="icon">
                                                    <i class="fa-solid fa-arrow-right"></i>
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

<script>
    $('#product-carousel').owlCarousel({
        dots: false,
        loop: true,
        margin: 10,
        autoplay: true,
        autoplayTimeout: 6000,
        nav: false, // Show next and prev buttons
        slideSpeed: 500,
        autoplayHoverPause: true,
        smartSpeed: 1000,
        mouseDrag: false,
        responsiveClass: true,
        navText: [
            "<i class='fa-solid fa-chevron-left'></i>",
            "<i class='fa-solid fa-chevron-right'></i>"
        ],
        responsive: {
            0: {
                items: 1,
            },
            400: {
                items: 1,
            },
            600: {
                items: 1,
            },
            768: {
                items: 1,
            },
            1000: {
                items: 1,
            },
            1200: {
                items: 1,
            }
        }
    });
    </script>

    <script>
        function resetQuery(parameter) {
            const currentUrl = window.location.href;
            const updatedUrl = new URL(currentUrl);
            updatedUrl.searchParams.set(parameter, 'All');
            window.location.href = updatedUrl.toString();
        }
    </script>

@endsection