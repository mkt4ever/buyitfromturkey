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
                                        <option data-display="Category">Category</option>
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
                        <div class="item">
                            <div class="row">
                                <div class="col-md-12 col-lg-7 image">
                                    <div class="content">
                                        <img src="assets/img/banner1.png" alt="">

                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-5 text-sec">
                                    <div class="text-content">
                                        <div class="discreption">
                                            <div class="top">
                                                <ul>
                                                    <li>
                                                        <div class="tag">
                                                            <span class="budge danger">Health</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="date">
                                                            <span>01.08.2023</span>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="title">
                                                <div class="top">
                                                    <div class="left">
                                                        <h3>Why Do People Travel to Other Countries for
                                                            Medical Services?</h3>
                                                    </div>
                                                    <div class="right">
                                                        <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                                    </div>
                                                </div>

                                                <div class="details">
                                                    <p>
                                                        Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper
                                                        mollis at id
                                                        massa. Fusce eu lorem sodales, elementum augue nec, fringilla
                                                        leo.
                                                        Phasellus metus mi, placerat sit amet lorem eu, vulputate
                                                        scelerisque
                                                        enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim
                                                        ut
                                                        ullamcorper.
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
                                                    <li>
                                                        <a href="">
                                                            <img src="assets/img/icon/tag.svg" alt="">
                                                            <em>House</em>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="">
                                                            <img src="assets/img/icon/tag.svg" alt="">
                                                            <em>Flat</em>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="row">
                                <div class="col-md-12 col-lg-7 image">
                                    <div class="content">
                                        <img src="assets/img/banner1.png" alt="">

                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-5 text-sec">
                                    <div class="text-content">
                                        <div class="discreption">
                                            <div class="top">
                                                <ul>
                                                    <li>
                                                        <div class="tag">
                                                            <span class="budge danger">Health</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="date">
                                                            <span>01.08.2023</span>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="title">
                                                <div class="top">
                                                    <div class="left">
                                                        <h3>Why Do People Travel to Other Countries for
                                                            Medical Services?</h3>
                                                    </div>
                                                    <div class="right">
                                                        <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                                    </div>
                                                </div>

                                                <div class="details">
                                                    <p>
                                                        Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper
                                                        mollis at id
                                                        massa. Fusce eu lorem sodales, elementum augue nec, fringilla
                                                        leo.
                                                        Phasellus metus mi, placerat sit amet lorem eu, vulputate
                                                        scelerisque
                                                        enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim
                                                        ut
                                                        ullamcorper.
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
                                                    <li>
                                                        <a href="">
                                                            <img src="assets/img/icon/tag.svg" alt="">
                                                            <em>House</em>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="">
                                                            <img src="assets/img/icon/tag.svg" alt="">
                                                            <em>Flat</em>
                                                        </a>
                                                    </li>
                                                    
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="blog-items">
                    <div class="row">
                        <div class="col-md-6 col-lg-4 col-xl-3 item">
                            <div class="content">
                                <div class="details">
                                    <div class="link">
                                        <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                    </div>
                                    <div class="tag">
                                        <span class="budge warning">Beauty</span>
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
                        <div class="col-md-6 col-lg-4 col-xl-3 item">
                            <div class="content">
                                <div class="details">
                                    <div class="link">
                                        <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                    </div>
                                    <div class="tag">
                                        <span class="budge purple">Beauty</span>
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
                        <div class="col-md-6 col-lg-4 col-xl-3 item">
                            <div class="content">
                                <div class="details">
                                    <div class="link">
                                        <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                    </div>
                                    <div class="tag">
                                        <span class="budge primary">Beauty</span>
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
                        <div class="col-md-6 col-lg-4 col-xl-3 item">
                            <div class="content">
                                <div class="details">
                                    <div class="link">
                                        <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                    </div>
                                    <div class="tag">
                                        <span class="budge warning">Beauty</span>
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
                        <div class="col-md-6 col-lg-4 col-xl-3 item">
                            <div class="content">
                                <div class="details">
                                    <div class="link">
                                        <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                    </div>
                                    <div class="tag">
                                        <span class="budge info">Beauty</span>
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
                        <div class="col-md-6 col-lg-4 col-xl-3 item">
                            <div class="content">
                                <div class="details">
                                    <div class="link">
                                        <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                    </div>
                                    <div class="tag">
                                        <span class="budge bblue">Beauty</span>
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
                        <div class="col-md-6 col-lg-4 col-xl-3 item">
                            <div class="content">
                                <div class="details">
                                    <div class="link">
                                        <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                    </div>
                                    <div class="tag">
                                        <span class="budge danger">Beauty</span>
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
                        <div class="col-md-6 col-lg-4 col-xl-3 item">
                            <div class="content">
                                <div class="details">
                                    <div class="link">
                                        <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                    </div>
                                    <div class="tag">
                                        <span class="budge success">Beauty</span>
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
                        <div class="hidden-blog">
                            <div class="row">
                                <div class="col-md-6 col-lg-4 col-xl-3 item">
                                    <div class="content">
                                        <div class="details">
                                            <div class="link">
                                                <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                            </div>
                                            <div class="tag">
                                                <span class="success">Beauty</span>
                                            </div>
                                            <div class="title">
                                                <a href="">
                                                    Why Do You Choose Bags In Turkey?
                                                </a>
                                            </div>
                                            <div class="disc">
                                                <p>
                                                    Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis
                                                    at id
                                                    massa. Fusce eu lorem sodales, elementum augue nec, fringilla leo.
                                                    Phasellus
                                                    metus mi,
                                                </p>
                                            </div>
                                            <div class="image">
                                                <img src="assets/img/blog1.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3 item">
                                    <div class="content">
                                        <div class="details">
                                            <div class="link">
                                                <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                            </div>
                                            <div class="tag">
                                                <span class="success">Beauty</span>
                                            </div>
                                            <div class="title">
                                                <a href="">
                                                    Why Do You Choose Bags In Turkey?
                                                </a>
                                            </div>
                                            <div class="disc">
                                                <p>
                                                    Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis
                                                    at id
                                                    massa. Fusce eu lorem sodales, elementum augue nec, fringilla leo.
                                                    Phasellus
                                                    metus mi,
                                                </p>
                                            </div>
                                            <div class="image">
                                                <img src="assets/img/blog1.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3 item">
                                    <div class="content">
                                        <div class="details">
                                            <div class="link">
                                                <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                            </div>
                                            <div class="tag">
                                                <span class="success">Beauty</span>
                                            </div>
                                            <div class="title">
                                                <a href="">
                                                    Why Do You Choose Bags In Turkey?
                                                </a>
                                            </div>
                                            <div class="disc">
                                                <p>
                                                    Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis
                                                    at id
                                                    massa. Fusce eu lorem sodales, elementum augue nec, fringilla leo.
                                                    Phasellus
                                                    metus mi,
                                                </p>
                                            </div>
                                            <div class="image">
                                                <img src="assets/img/blog1.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3 item">
                                    <div class="content">
                                        <div class="details">
                                            <div class="link">
                                                <a href=""><img src="assets/img/icon/right.svg" alt=""></a>
                                            </div>
                                            <div class="tag">
                                                <span class="success">Beauty</span>
                                            </div>
                                            <div class="title">
                                                <a href="">
                                                    Why Do You Choose Bags In Turkey?
                                                </a>
                                            </div>
                                            <div class="disc">
                                                <p>
                                                    Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis
                                                    at id
                                                    massa. Fusce eu lorem sodales, elementum augue nec, fringilla leo.
                                                    Phasellus
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




                    </div>
                    <div class="page-link">
                        <div class="show-more">
                            <button class="btn">
                                <span class="more">Show More</span>
                                <span class="less">Show Less</span>
                                <i class="fa-solid fa-chevron-down"></i></button>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
    <!-- page content  ==---------------------------- -->


@endsection