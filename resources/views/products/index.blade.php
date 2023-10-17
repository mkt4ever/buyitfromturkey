@extends('layout.app')

@section('content')

<div class="page-content gray-bg">
    <div class="products-section">
        <div class="row">
            <div class="col-md-12 col-xl-6 map-sec">
                <div class="content">

                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d96305.2103368212!2d28.921036800000003!3d41.03536640000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2str!4v1695209146020!5m2!1sen!2str"
                        style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                    <div class="zoom-btn">
                        <a href="" class="btn btn-primary icon-btn">Haritayı Genişlet <div class="icon"><i
                                    class="fa-solid fa-up-right-and-down-left-from-center"></i></div></a>
                    </div>
                </div>

            </div>
            <div class="col-md-12 col-xl-6 search-box">
                <div class="top">
                    <div class="title">
                        <h3>
                            Products
                            <br>
                            AND
                            <br>
                            SERVICES
                        </h3>
                    </div>
                    <div class="smsearch-box">
                        <div class="action">
                            <button>
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </button>
                        </div>
                        <div class="item">
                            <div class="content">
                                <select class="nice-select">
                                    <option data-display="Sectors">Sectors</option>

                                    @foreach ($products_sectores as $sector)
                                        <option value="{{$sector->id}}">{{$sector->title}}</option>
                                    @endforeach
                                    

                                </select>
                            </div>
                        </div>
                        <div class="item">
                            <div class="content">
                                <select class="nice-select">
                                    <option data-display="Category">Category</option>
                                    @foreach ($products_category as $category)
                                        <option value="{{$category->id}}">{{$category->title}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="item">
                            <div class="content">
                                <select class="nice-select">
                                    <option data-display="Tags">Tags</option>
                                    @foreach ($products_tags as $tag)
                                        <option value="{{$tag->id}}">{{$tag->title}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="search-inp">
                            <input type="email" class="form-control" placeholder="Searching">

                        </div>
                        <div class="action mobile">
                            <button>
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </button>
                        </div>
                    </div>
                    <div class="actions">
                        <ul>
                            <li><a href="" class="direction">Clear Selection</a></li>
                            <li><button>See Results (12) <i class="fa-solid fa-arrow-down"></i></button></li>
                        </ul>
                    </div>
                </div>
                <div class="bottom">
                    <div class="owl-carousel owl-theme" id="product-carousel">
                        <div class="item">
                            <div class="image">
                                <img src="assets/img/blogtravel.png" alt="">
                                <div class="title-sec">
                                    <h3>Buy it From Turkiye</h3>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="assets/img/blogtravel2.png" alt="">
                                <div class="title-sec">
                                    <h3>Buy it From Turkiye</h3>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="assets/img/slider2.png" alt="">
                                <div class="title-sec">
                                    <h3>Buy it From Turkiye</h3>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>


        <div class="products-boxes">
            <div class="container">
                <div class="title">
                    <h3>Search Results</h3>
                    <p>12 results are listed according to the information you selected.</p>
                    <div class="filter">
                        <ul>
                            <li><a href="">Sectors: Real Estate <i class="fa-solid fa-xmark"></i></a></li>
                            <li><a href="">Category: All <i class="fa-solid fa-xmark"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="boxes">
                    <div class="row">
                        <div class="col-md-6 col-lg-4 col-xl-3 item">
                            <div class="details">
                                <div class="content">
                                    <a href="">
                                        <div class="image">
                                            <img src="assets/img/blogtravel.png" alt="">
                                        </div>
                                        <div class="bottom-s">

                                            <h4>Next Article</h4>
                                            <div class="icon">
                                                <i class="fa-solid fa-arrow-right"></i>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 item">
                            <div class="details">
                                <div class="content">
                                    <a href="">
                                        <div class="image">
                                            <img src="assets/img/blogtravel.png" alt="">
                                        </div>
                                        <div class="bottom-s">

                                            <h4>Next Article</h4>
                                            <div class="icon">
                                                <i class="fa-solid fa-arrow-right"></i>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 item">
                            <div class="details">
                                <div class="content">
                                    <a href="">
                                        <div class="image">
                                            <img src="assets/img/blogtravel.png" alt="">
                                        </div>
                                        <div class="bottom-s">

                                            <h4>Next Article</h4>
                                            <div class="icon">
                                                <i class="fa-solid fa-arrow-right"></i>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-4 col-xl-3 item">
                            <div class="details">
                                <div class="content">
                                    <a href="">
                                        <div class="image">
                                            <img src="assets/img/blogtravel.png" alt="">
                                        </div>
                                        <div class="bottom-s">

                                            <h4>Next Article</h4>
                                            <div class="icon">
                                                <i class="fa-solid fa-arrow-right"></i>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 item">
                            <div class="details">
                                <div class="content">
                                    <a href="">
                                        <div class="image">
                                            <img src="assets/img/blogtravel.png" alt="">
                                        </div>
                                        <div class="bottom-s">

                                            <h4>Next Article</h4>
                                            <div class="icon">
                                                <i class="fa-solid fa-arrow-right"></i>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>

@endsection