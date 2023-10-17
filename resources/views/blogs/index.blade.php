@extends('layout.app')

@section('content')

    <!-- banner ==---------------------------- -->
    <section class="page-banner blog-banner">
        <div class="content">
            <div class="image" style="background-image: url('{{asset('img/banner1.png')}}');">
                <div class="container">
                    <div class="details">

                        <div class="text">
                            <h3>
                                {!!text('blogs_index_title')!!}
                            </h3>
                        </div>
                        <div class="search-sec">
                            <div class="content">
                                <div class="categoty-sec">
                                    <select class="nice-select">
                                        <option data-display="Category">{{text('Category')}}</option>
                                        @foreach ($blogsCategories as $category)
                                            <option value="{{$category->id}}">{{$category->title}}</option>
                                        @endforeach
                                        
                                    </select>
                                </div>
                                <div class="input-sec">
                                    <input type="email" class=  "form-control" required="">
                                </div>
                                <div class="action-sec">
                                    <button>
                                        <i class="fa-solid fa-magnifying-glass"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="lists">
                            <ul>
                                @foreach ($blogsCategories as $category)
                                    <li><a href="">{{$category->title}}</a></li>
                                @endforeach
                                
                            </ul>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>
    <!-- banner ==---------------------------- -->

    <!-- page content  ==---------------------------- -->
    <div class="page-content">
        <div class="container">
            <div class="blog-page">
                <div class="blog-carousel">
                    <div class="owl-carousel owl-theme" id="blog">
                        @foreach ($featured_blogs as $blog)
                            <div class="item">
                                <div class="row">
                                    <div class="col-md-12 col-lg-7 image">
                                        <div class="content">
                                            <img src="{{Voyager::image($blog->thumbnail_image)}}" alt="">

                                        </div>
                                    </div>
                                    <div class="col-md-12 col-lg-5 text-sec">
                                        <div class="text-content">
                                            <div class="discreption">
                                                <div class="top">
                                                    <ul>
                                                        <li>
                                                            <div class="tag">
                                                                <span class="budge danger">{{$blog->blog_category->title}}</span>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="date">
                                                                <span>{{formatDate($blog->date)}}</span>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="title">
                                                    <div class="top">
                                                        <div class="left">
                                                            <h3>{{$blog->title}}</h3>
                                                        </div>
                                                        <div class="right">
                                                            <a href="{{ localeRoute('blogs.show', $blog->translate(app()->getLocale())->slug) }}"><img src="{{asset('img/icon/right.svg')}}" alt=""></a>
                                                        </div>
                                                    </div>

                                                    <div class="details">
                                                        <p>
                                                            {{$blog->brief}}
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="bottom">
                                                <div class="tags">
                                                    <ul>
                                                        <li>
                                                            <h3>Tags</h3>
                                                        </li>
                                                        @foreach ($blog->blog_tags as $tag)
                                                            <li>
                                                                <a href="">
                                                                    <img src="{{asset('img/icon/tag.svg')}}" alt="">
                                                                    <em>{{$tag->title}}</em>
                                                                </a>
                                                            </li>
                                                        @endforeach
                                                        
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        @endforeach
                        

                    </div>
                </div>
                <div class="blog-items">
                    <div class="row">
                        @foreach ($latest_blogs as $blog)
                        <div class="col-md-6 col-lg-4 col-xl-3 item">
                            <div class="content">
                                <div class="details">
                                    <div class="link">
                                        <a href="{{ localeRoute('blogs.show', $blog->translate(app()->getLocale())->slug) }}"><img src="{{asset('img/icon/right.svg')}}" alt=""></a>
                                    </div>
                                    <div class="tag">
                                        <span class="budge {{$blog->blog_category->color}}">{{$blog->blog_category->title}}</span>
                                    </div>
                                    <div class="title">
                                        <a href="{{ localeRoute('blogs.show', $blog->translate(app()->getLocale())->slug) }}">
                                            {{$blog->title}}
                                        </a>
                                    </div>
                                    <div class="disc">
                                        <p>
                                            {{$blog->brief}}
                                        </p>
                                    </div>
                                    <div class="image">
                                        <img src="{{Voyager::image($blog->thumbnail_image)}}" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                        

                        <div class="hidden-blog">
                            <div class="row">
                                @foreach ($hiddenBlogs as $blog) 

                                    <div class="col-md-6 col-lg-4 col-xl-3 item">
                                        <div class="content">
                                            <div class="details">
                                                <div class="link">
                                                    <a href="{{ localeRoute('blogs.show', $blog->translate(app()->getLocale())->slug) }}"><img src="{{asset('img/icon/right.svg')}}" alt=""></a>
                                                </div>
                                                <div class="tag">
                                                    <span class="budge {{$blog->blog_category->color}}">{{$blog->blog_category->title}}</span>
                                                </div>
                                                <div class="title">
                                                    <a href="{{ localeRoute('blogs.show', $blog->translate(app()->getLocale())->slug) }}">
                                                        {{$blog->title}}
                                                    </a>
                                                </div>
                                                <div class="disc">
                                                    <p>
                                                        {{$blog->brief}}
                                                    </p>
                                                </div>
                                                <div class="image">
                                                    <img src="{{Voyager::image($blog->thumbnail_image)}}" alt="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                @endforeach
                                

                            </div>
                        </div>




                    </div>
                    <div class="page-link">
                        <div class="show-more">
                            <button class="btn">
                                <span class="more">{{text('Show_More')}}</span>
                                <span class="less">{{text('Show_Less')}}</span>
                                <i class="fa-solid fa-chevron-down"></i></button>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>
    <!-- page content  ==---------------------------- -->

    


    <script>
        $(document).ready(function() {
        $('#blog').owlCarousel({
            dots: false,
            loop: true,
            margin: 10,
            autoplay: true,
            autoplayTimeout: 6000,
            nav: true, // Show next and prev buttons
            slideSpeed: 500,
            autoplayHoverPause: true,
            smartSpeed: 1000,
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
    
        $('.footer').owlCarousel({
                dots: false,
                loop: true,
                margin: 10,
                autoplay: true,
                autoplayTimeout: 6000,
                nav: false, // Show next and prev buttons
                slideSpeed: 500,
                autoplayHoverPause: true,
                smartSpeed: 1000,
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
                        items: 2,
                    },
                    1000: {
                        items: 2,
                    },
                    1200: {
                        items: 3,
                    }
                }
            });
        });
        </script>
@endsection



