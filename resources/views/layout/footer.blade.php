
<section class="footer-section">
    <div class="items-1">
        <div class="container">

        <div class="col-md-6 col-lg-4 text">
            <h4>{{text('newsletter')}}</h4>
        </div>
        </div>

    </div>
    <div class="items-2">
        <div class="container">
        <div class="row">
            
        <div class="text col-md-2">
            <h4>{{text('Products_and_Services_header')}}</h4>
        </div>
        <div class="links col-md-6">
            <ul>
                @foreach($productSectors as $sector)
                <li><a href="{{localeRoute('products.index', ['sector' => $sector->slug])}}">{{$sector->title}}</a></li>
                @endforeach
            </ul>
        </div>
        <div class="form-sec col-md-4">
            <form class="d-flex" method="POST" action="{{localeRoute('bulten')}}">
                @csrf
                <div class="inp-sec">
                    <label for="" class="form-label">{{text('Email')}}</label>
                    <input name="email" type="email" class="form-control" placeholder="Your Email @">
                </div>
                <div class="action">
                    <button type="submit" class="btn btn-secondary icon-btn">{{text('Send')}} <div class="icon"><i class="fa-solid fa-arrow-right"></i></div></button>
                </div>
            </form>
        </div>
        </div>
        </div>
    </div>
    <div class="items-3"> 
        <div class="row">
            <div class="owl-carousel owl-theme footer">
            <div class=" item">
                <a href="">What Would You Like To Get From Türkiye?</a>
            </div>
            <div class=" item">
                <a href="">What Would You Like To Get From Türkiye?</a>

            </div>
            <div class=" item">
                <a href="">What Would You Like To Get From Türkiye?</a>

            </div>
            </div>
        </div> 

    </div>
    <div class="items-4">
        <div class="container">
        <div class="row">
            <div class="col-md-4 left">
                <p>{{text('copyright')}}</p>
            </div>
            <div class="col-md-4 center">
            <ul>
                <li><a href="{{$contactUs->facebook}}"><img src="{{asset('img/icon/facebook.svg')}}" alt=""></a></li>
                <li><a href="{{$contactUs->youtube}}"><img src="{{asset('img/icon/youtube.svg')}}" alt=""></a></li>
                <li><a href="{{$contactUs->instagram}}"><img src="{{asset('img/icon/instagram.svg')}}" alt=""></a></li>
            </ul>
            </div>
            <div class="col-md-4 right">
                <ul>
                    @foreach ($pages as $page)
                        <li><a href="{{ localeRoute('staticPage', $page->slug) }}">{{ $page->title }}</a></li>
                    @endforeach
                </ul>
            </div>
        </div>
        </div>
    </div>
</section>

<!-- footer ==---------------------------- -->

<!-- page content ==---------------------------------------- -->

<script>
    let msg_done = "{{text('msg_done')}}", msg_sent = "{{text('msg_sent')}}", msg_error = "{{text('msg_error')}}";
</script>

<script src="{{asset('lib/OwlCarousel2-2.3.4/dist/owl.carousel.min.js')}}"></script>
<script src="{{asset('lib/bootstrap-5.2.0/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('lib/fancybox/dist/jquery.fancybox.min.js')}}"></script>
<script src="{{asset('lib/select2-4.1.0-rc.0/dist/js/select2.min.js')}}"></script>
<script src="{{asset('lib/DatePicker/bootstrap-datepicker.min.js')}}"></script>  
<script src="{{asset('lib/DatePicker/bootstrap-datetimepicker.min.js')}}"></script> 
<script src="{{asset('lib/jquery-nice-select-1.1.0/js/jquery.nice-select.min.js')}}"></script>
<script src="{{asset('lib/toastr/toastr.min.js')}}"></script>
<script src="{{asset('lib/intl-tel-input-master/build/js/intlTelInput-jquery.min.js')}}"></script>
<script src="{{asset('lib/intl-tel-input-master/build/js/intlTelInput.min.js')}}"></script>
<script src="{{asset('lib/aos-master/dist/aos.js')}}"></script>
<script src="{{asset('js/cookies.js')}}"></script>
<script src="{{asset('js/custom.js')}}"></script>
<script src="{{asset('js/script.js')}}"></script>


<script>
    $(document).ready(function(){
            @if(session('msg') == "msg-sent")
              toastr.success(msg_sent);
            @elseif(session('msg') == "done")
              toastr.success(msg_done);
            @elseif(session('msg'))
              toastr.success("{{session('msg')}}");
            @elseif($errors && $errors->count() > 0)
                @foreach($errors->all() as $error)
                toastr.error("{{$error}}");
                @endforeach
            @endif
            // toastr.warning("nedir");
            // toastr.info("nedir");
        });
  </script>
<script>
AOS.init();
function getRealIndex(totalItems, currentIndex) {
    if(currentIndex == 0) return "01";

    let index = (currentIndex - 1) % totalItems;
    if(index == 0) index = totalItems;

    return String(index).padStart(2, '0');
}

$('#slider').owlCarousel({
    dots: false,
    loop: true,
    margin: 0,
    autoplay: true,
    autoplayTimeout: 6000,
    nav: true, // Show next and prev buttons
    slideSpeed: 500,
    autoplayHoverPause: true,
    smartSpeed: 1000,
    singleItem: true,
    animateOut: 'fadeOut',
    responsiveClass: true,
    mouseDrag: false,
    navText: [
        "<i class='fa-solid fa-chevron-left'></i>",
        "<i class='fa-solid fa-chevron-right'></i>"
    ],
    responsive: {
        0: {
            items: 1,
        },
        600: {
            items: 1,

        },
        1000: {
            items: 1,
        }
    },
    onChanged: function(event) {
        $("#active-item-indicator").html(getRealIndex(event.item.count, event.item.index));
    }
});



$('.categories-carousel').owlCarousel({
    dots: false,
    loop: false,
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
            items: 2,
        },
        1000: {
            items: 3,
        },
        1200: {
            items: 4,
        }
    }
});
$('#gallery-carousel').owlCarousel({
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
            items: 2,
        },
        768: {
            items: 3,
        },
        1000: {
            items: 3,
        },
        1200: {
            items: 3,
        }
    }
});

$('.brans-carousel').owlCarousel({
    dots: false,
    loop: true,
    margin: 10,
    autoplay: true,
    autoplayTimeout: 2000,
    nav: false, // Show next and prev buttons
    slideSpeed: 2000,
    autoplayHoverPause: false,
    smartSpeed: 2000,
    responsiveClass: true,
    navText: [
        "<i class='fa-solid fa-chevron-left'></i>",
        "<i class='fa-solid fa-chevron-right'></i>"
    ],
    responsive: {
        0: {
            items: 2,
        },
        400: {
            items: 3,
        },
        600: {
            items: 3,
        },
        768: {
            items: 4,
        },
        1000: {
            items: 5,
        },
        1200: {
            items: 6,
        }
    }
});

$('.footer').owlCarousel({
    dots: false,
    loop: true,
    margin: 10,
    autoplay: true,
    autoplayTimeout: 4000,
    nav: false, // Show next and prev buttons
    slideSpeed: 4000,
    autoplayHoverPause: false,
    smartSpeed: 4000,
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
            items: 2,
        },
        1200: {
            items: 2,
        }
    }
});
</script>
@yield('js')
@stack('js')
{{-- {!! $seo->body_bottom !!} --}}
</body>

</html>
    
    
