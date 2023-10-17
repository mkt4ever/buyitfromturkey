@extends('layout.app')

@section('content')

<!-- page content  ==---------------------------- -->
<div class="page-content">
    <div class="blog-details">
        <div class="intro-sec">
            <div class="container">
                <div class="top">
                    <div class="left">
                        <a href="">
                            <i class="fa-solid fa-angle-left"></i>
                            Back
                        </a>
                    </div>
                    <div class="right">
                        <div class="tree-links">
                            <ul>
                                <li>
                                    <a href="">
                                        <div class="icon"><i class="fa-solid fa-house"></i></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">Blog</a>
                                </li>
                                <li class="active">
                                    <a href="">15 Best Museums in Istanbul, Turkey</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="bottom">
                    <div class="row">
                        <div class="col-md-12 col-lg-5 text-sec">
                            <div class="content">
                                <span class="bg-{{$blog->blog_category->color}}">{{ $blog->blog_category->title }}</span>
                                <h3>{{$blog->title}}</h3>
                                <p>
                                    {{$blog->brief}}
                                </p>
                                <div class="list">
                                    <ul>
                                        <li>{{text('by')}} {{$blog->author->name}}</li>
                                        <li><img src="{{asset('img/icon/calendar.svg')}}" alt="">{{formatDate($blog->date)}}</li>
                                        <li><img src="{{asset('img/icon/time.svg')}}" alt="">{{ \Carbon\Carbon::parse($blog->date)->format('h:i A') }} </li>
                                    </ul>
                                </div>
                                <div class="tags">
                                    <ul>
                                        <li>
                                            <h3>{{text('Tags')}}</h3>
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
                        <div class="col-md-12 col-lg-7 image">
                            <div class="content">
                                <img src="{{Voyager::image($blog->cover_image)}}" alt="">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="blog-details-sec">
            <div class="container">

                <div class="text-sec">
                    {!! $blog->content !!}
                </div>
                <div class="bottom responsive">
                    <div class="row"> 
                        <div class=" col-md-6 center">
                            <div class="social-media">
                                <h3>{{text('Share')}}</h3>
                                <ul>
                                    <li><a href=""><img src="{{asset('img/icon/bfacebook.svg')}}" alt=""></a></li>
                                    <li><a href=""><img src="{{asset('img/icon/btwitter.svg')}}" alt=""></a></li>
                                    <li><a href=""><img src="{{asset('img/icon/bemail.svg')}}" alt=""></a></li>
                                </ul>
                            </div>
                        </div> 
                    </div>

                </div>
                <div class="bottom">
                    <div class="row">
                        @if($prevBlog)
                        <div class=" col-md-3 left ">
                            <div class="box-item">
                                <div class="content" style="background-image: url('assets/img/blogtravel.png');">
                                    <a href="{{ localeRoute('blogs.show', $prevBlog->translate(app()->getLocale())->slug) }}">
                                        <div class="top-s">
                                            <h3>{{$prevBlog->title}}</h3>
                                        </div>
                                        <div class="bottom-s">
                                            <div class="icon">
                                                <i class="fa-solid fa-arrow-left"></i>
                                            </div>
                                            <h4>{{text('Before_Article')}}</h4>

                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        @endif
                        <div class=" col-md-6 center">
                            <div class="social-media">
                                <h3>{{text('Share')}}</h3>
                                <ul>
                                    <li><a href=""><img src="{{asset('img/icon/bfacebook.svg')}}" alt=""></a></li>
                                    <li><a href=""><img src="{{asset('img/icon/btwitter.svg')}}" alt=""></a></li>
                                    <li><a href=""><img src="{{asset('img/icon/bemail.svg')}}" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class=" col-md-3 right ">
                        @if($nextBlog)
                        <div class="box-item">
                                <div class="content" style="background-image: url('assets/img/blogtravel.png');">
                                    <a href="{{ localeRoute('blogs.show', $nextBlog->translate(app()->getLocale())->slug) }}">
                                        <div class="top-s">
                                            <h3>{{$nextBlog->title}}</h3>
                                        </div>
                                        <div class="bottom-s">
                                            <div class="icon">
                                                <i class="fa-solid fa-arrow-left"></i>
                                            </div>
                                            <h4>{{text('Next_Article')}}</h4>

                                        </div>
                                    </a>
                                </div>
                            </div>
                            @endif
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
</div>
<!-- page content  ==---------------------------- -->

@endsection