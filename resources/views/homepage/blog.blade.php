<section class="blog-section">
    <div class="container">
        <div class="top" data-aos="fade-up" data-aos-duration="1000">
            <div class="row">
                <div class="text col-md-2">
                    <h3>{{text('Blog')}}</h3>
                </div>
                <div class="nav-sec col-md-10">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#tab0"
                                type="button" role="tab" aria-controls="tab0" aria-selected="true">All</button>
                        </li>

                        @foreach ($blogCategories as $category)
                            @if ($category->blogs_count != 0)
                            
                        
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link " data-bs-toggle="tab" data-bs-target="#tab{{$category->id}}" type="button"
                                        role="tab" aria-controls="tab{{$category->id}}" aria-selected="true">{{$category->title}}</button>
                                </li>
                                
                            @endif
                        @endforeach
                        
                    </ul>
                </div>
            </div>

        </div>
        <div class="tab-content" id="myTabContent" data-aos="fade-up" data-aos-duration="1000">
            <div class="tab-pane fade show active" id="tab0" role="tabpanel" tabindex="0">
                <div class="owl-carousel owl-theme  categories-carousel">

                    @foreach ($blogs as $blog)
                        <div class="item">
                            <div class="content">
                                <div class="details">
                                    <div class="link">
                                        <a href=""><img src="{{asset('img/icon/right.svg')}}" alt=""></a>
                                    </div>
                                    <div class="tag">
                                        <span class="{{$blog->blog_category->color}}">{{$blog->blog_category->title}}</span>
                                    </div>
                                    <div class="title">
                                        <a href="">
                                            {{$blog->title}}
                                        </a>
                                    </div>
                                    <div class="disc">
                                        <p>
                                            {!! $blog->brief !!}
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

            @foreach ($blogCategories as $category)

                <div class="tab-pane fade" id="tab{{$category->id}}" role="tabpanel" tabindex="0">
                    <div class="owl-carousel owl-theme  categories-carousel">

                        @foreach ($blogs as $blog)
                            @if ($blog->blog_category_id == $category->id)
                                
                            <div class="item">
                                <div class="content">
                                    <div class="details">
                                        <div class="link">
                                            <a href=""><img src="{{asset('img/icon/right.svg')}}" alt=""></a>
                                        </div>
                                        <div class="tag">
                                            <span class="{{$blog->blog_category->color}}">{{$blog->blog_category->title}}</span>
                                        </div>
                                        <div class="title">
                                            <a href="">
                                                {{$blog->title}}
                                            </a>
                                        </div>
                                        <div class="disc">
                                            <p>
                                                {!! $blog->brief !!}
                                            </p>
                                        </div>
                                        <div class="image">
                                            <img src="{{Voyager::image($blog->thumbnail_image)}}" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            @endif
                        @endforeach
                        



                    </div>
                </div>

            @endforeach
            
        </div>
    </div>
</section>
