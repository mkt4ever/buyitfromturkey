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
                            <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#tab1"
                                type="button" role="tab" aria-controls="tab1" aria-selected="true">All</button>
                        </li>

                        @foreach ($blogCategories as $category)

                            <li class="nav-item" role="presentation">
                                <button class="nav-link " data-bs-toggle="tab" data-bs-target="#tab2" type="button"
                                    role="tab" aria-controls="tab2" aria-selected="true">{{$category->title}}</button>
                            </li>

                        @endforeach
                        
                    </ul>
                </div>
            </div>

        </div>
        <div class="tab-content" id="myTabContent" data-aos="fade-up" data-aos-duration="1000">
            <div class="tab-pane fade show active" id="tab1" role="tabpanel" tabindex="0">
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
            <div class="tab-pane fade" id="tab2" role="tabpanel" tabindex="0">
                <div class="owl-carousel owl-theme  categories-carousel">
                    <div class="item">
                        <div class="content">
                            <div class="details">
                                <div class="link">
                                    <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                </div>
                                <div class="tag">
                                    <span class="info">travel</span>
                                </div>
                                <div class="title">
                                    <a href="">
                                        Why Do You Choose Bags In Turkey?
                                    </a>
                                </div>
                                <div class="disc">
                                    <p>
                                        Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id
                                        massa. Fusce eu lorem sodales, elementum augue nec, fringilla leo. Phasellus
                                        metus mi,
                                    </p>
                                </div>
                                <div class="image">
                                    <img src="assets/img/blog1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="content">
                            <div class="details">
                                <div class="link">
                                    <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                </div>
                                <div class="tag">
                                    <span class="info">travel</span>
                                </div>
                                <div class="title">
                                    <a href="">
                                        Why Do You Choose Bags In Turkey?
                                    </a>
                                </div>
                                <div class="disc">
                                    <p>
                                        Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id
                                        massa. Fusce eu lorem sodales, elementum augue nec, fringilla leo. Phasellus
                                        metus mi,
                                    </p>
                                </div>
                                <div class="image">
                                    <img src="assets/img/blog1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="content">
                            <div class="details">
                                <div class="link">
                                    <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                </div>
                                <div class="tag">
                                    <span class="info">travel</span>
                                </div>
                                <div class="title">
                                    <a href="">
                                        Why Do You Choose Bags In Turkey?
                                    </a>
                                </div>
                                <div class="disc">
                                    <p>
                                        Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id
                                        massa. Fusce eu lorem sodales, elementum augue nec, fringilla leo. Phasellus
                                        metus mi,
                                    </p>
                                </div>
                                <div class="image">
                                    <img src="assets/img/blog1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="content">
                            <div class="details">
                                <div class="link">
                                    <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                </div>
                                <div class="tag">
                                    <span class="info">travel</span>
                                </div>
                                <div class="title">
                                    <a href="">
                                        Why Do You Choose Bags In Turkey?
                                    </a>
                                </div>
                                <div class="disc">
                                    <p>
                                        Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id
                                        massa. Fusce eu lorem sodales, elementum augue nec, fringilla leo. Phasellus
                                        metus mi,
                                    </p>
                                </div>
                                <div class="image">
                                    <img src="assets/img/blog1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="content">
                            <div class="details">
                                <div class="link">
                                    <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                </div>
                                <div class="tag">
                                    <span class="info">travel</span>
                                </div>
                                <div class="title">
                                    <a href="">
                                        Why Do You Choose Bags In Turkey?
                                    </a>
                                </div>
                                <div class="disc">
                                    <p>
                                        Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id
                                        massa. Fusce eu lorem sodales, elementum augue nec, fringilla leo. Phasellus
                                        metus mi,
                                    </p>
                                </div>
                                <div class="image">
                                    <img src="assets/img/blog1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
            <div class="tab-pane fade" id="tab3" role="tabpanel" tabindex="0">...</div>
            <div class="tab-pane fade" id="tab4" role="tabpanel" tabindex="0">...</div>
            <div class="tab-pane fade" id="tab5" role="tabpanel" tabindex="0">...</div>
            <div class="tab-pane fade" id="tab6" role="tabpanel" tabindex="0">...</div>
        </div>
    </div>
</section>
