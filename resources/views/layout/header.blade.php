<!DOCTYPE html>
<html @if(app()->getLocale() == 'ar')dir="rtl"@endif lang="{{app()->getLocale()}}">
<head>
    <?php
      $title = $meta->meta_title ?? $seo->meta_title;
      $description = $meta->meta_description ?? $seo->description;
      $keywords = $meta->meta_keyword ?? $seo->keywords;
      $canonical = $meta->meta_canonical ?? $seo->canonical;
      $ogimage = $meta->meta_ogimage ?? $seo->ogimage;
      $currentLang = $langs->where('code', app()->getLocale())->first();
      $locale = $currentLang ? $currentLang->locale : null;
      $currentURL = Request::getPathInfo();
      $currentRouteName = Route::currentRouteName();
   ?>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
   @if($title)<title>{{$title}}</title>@endif

    <script type="application/ld+json">
        {
          "@context": "https://schema.org",
          "@type": "DiagnosticLab",
          "name": "{{$seo->meta_title}}",
          "alternateName": "{{$seo->meta_title}}",
          "url": "https://maltepehastanesi.com.tr/",
          "logo": "https://maltepehastanesi.com.tr/storage/contact-us/April2023/ypmicZCnhW4bsxXreJa8.png",
          "sameAs": [
            "{{$contactUs->twitter}}",
            "{{$contactUs->instagram}}",
            "{{$contactUs->youtube}}",
            "{{$contactUs->linkedin}}",
            "{{$contactUs->facebook}}"
          ]
        }
     </script>

     @if(isset($breadcrumbs))
        <script type="application/ld+json">
           {

           "@context": "https://schema.org/",
           "@type": "BreadcrumbList",
           "itemListElement": [
              @foreach($breadcrumbs as $index => $breadcrumb)
                    {
                       "@type": "ListItem",
                       "position": {{ $index + 1 }},
                       "name": "{{ $breadcrumb->title }}",
                       "item": "{{ $breadcrumb->url }}"
                    }{{ $index !== count($breadcrumbs) - 1 ? ',' : '' }}
              @endforeach
           ]
           }
        </script>
     @endif

    @if(isset($robots) && $robots == "noindex")
        <meta name="robots" content="noindex">
    @else
        {{-- {!! $seo->meta !!} --}}
    @endif
   @if($description)<meta name="description" content="{{ $description }}">@endif
   @if($keywords)<meta name="keywords" content="{{ $keywords }}">@endif
   @if($canonical)<link rel="canonical" href="{{ $canonical }}" />@endif
   @if($ogimage)<meta property="og:image" content="{{ $ogimage }}" />@endif
   <meta name="author" content="smartwork.com.tr"> 
   <meta property="og:image:type" content="image/png">
	<meta property="og:image:width" content="300">
	<meta property="og:image:height" content="300">
   @if($title)<meta property="og:title" content="{{$title}}"/>@endif
   @if($locale)<meta property="og:locale" content="{{$locale}}"/>@endif
   <meta property="og:type" content="website"/>
   @if($description)<meta property="og:description" content="{{$description}}"/>@endif
   <meta property="og:url" content="{{request()->url()}}"/>
   @if($seo->site_name)<meta property="og:site_name" content="{{$seo->site_name}}"/>@endif
   <meta name="twitter:card" content="summary_large_image"/>
   @if($title)<meta name="twitter:title" content="{{$title}}"/>@endif
   @if($description)<meta name="twitter:description" content="{{$description}}"/>@endif
   @if($ogimage)<meta name="twitter:image" content="{{$ogimage}}"/>@endif
   @foreach($langs as $lang)
        <link rel="alternate" hreflang="{{$lang->code}}" href="{{getLangLink($lang->code)}}" />
   @endforeach

   <link rel="shortcut icon" type="image/icon" href="{{ asset('img/fave.ico') }}" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="{{ asset('lib/fontawesome-free-6.2.0-web/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('lib/bootstrap-5.2.0/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('lib/OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/humberger.css') }}">
    <link rel="stylesheet" href="{{ asset('lib/animate.css-main/animate.min.css') }}">
    <link rel="stylesheet" href="{{ asset('lib/fancybox/dist/jquery.fancybox.min.css') }}">
    <link href="{{ asset('lib/aos-master/dist/aos.css') }}" rel="stylesheet">
    <link href="{{ asset('lib/select2-4.1.0-rc.0/dist/css/select2.min.css') }}" rel="stylesheet" />
    <link rel="stylesheet" href="{{ asset('lib/jquery-nice-select-1.1.0/css/nice-select.css') }}">
    <link rel="stylesheet" href="{{asset('lib/DatePicker/bootstrap-datepicker.min.css')}}">
    <link rel="stylesheet" href="{{asset('lib/DatePicker/bootstrap-datetimepicker.min.css')}}">
    <link rel="stylesheet" href="{{ asset('lib/toastr/toastr.min.css') }}">
    <link rel="stylesheet" href="{{asset('lib/intl-tel-input-master/build/css/intlTelInput.min.css')}}">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
    <link rel="stylesheet" href="{{ asset('css/responsive.css') }}">

    {{-- important script  --}}
    <script src="{{asset('lib/jquery/jquery-3.6.0.min.js')}}"></script>
    <script src="{{asset('lib/OwlCarousel2-2.3.4/dist/owl.carousel.min.js')}}"></script>
    <script src="{{asset('js/script.js')}}"></script>
    <script src="{{asset('js/custom.js')}}"></script>

     {{-- {!! $seo->header_bottom !!} --}}
     {!! htmlScriptTagJsApi(['lang' => app()->getLocale()]) !!}
</head>

<body>
    {{-- {!! $seo->body_top !!} --}}
    <div class="{{isset($header) ? $header : 'trnsparent'}}">
      <div class="header-section">
         <div class=" container">
             <div class="bottom">
                 <div class="row">
                     <div class="logo">
                         <a href="{{localeRoute('homepage')}}"><img src="{{asset('img/logo'. (isset($header) && $header == "inner-page" ? '-main' : '') .'.svg')}}" alt=""></a>
                     </div>
                     <div class="navbar">
                         <div class="overlay"></div>
                         <div class="links">
                             <ul class="menu">
                                 <li class="submenulist">
                                     <a href="how.php">Why Choose Türkiye?</a>
                                     <ul class="sub-menu">
                                         <li>
                                             <a href="">
                                                 منيو</a>
                                             <ul>
                                                 <li><a href="">العلامات التجارية</a></li>
                                                 <li><a href="">عروض</a></li>
                                                 <li><a href="">منتجات</a></li>
                                                 <li><a href="">المدونة</a></li>
                                                 <li><a href="">العلامات التجارية</a></li>
                                                 <li><a href="">عروض</a></li>
                                                 <li><a href="">منتجات</a></li>
                                                 <li><a href="">المدونة</a></li>
                                             </ul>
                                         </li>
                                         <li><a href="" target="_blank">
                                                 منيو 2</a>
                                         </li>
                                     </ul>
     
                                 </li>
                                 <li class="">
                                     <a href="{{localeRoute('products.index')}}">{{text('Products_and_Services')}}</a>
     
                                 </li>
                             </ul>
                         </div>
                         <div class="right">
                             <div class="mail">
                                 <div class="text">
                                     <h4>Contact Us</h4>
                                     <a href="">{{$contactUs->email}}</a>
                                 </div>
                                 <div class="icon">
                                     <img src="{{asset('img/icon/eposta'. (isset($header) && $header == "inner-page" ? 'red' : '') .'.svg')}}" alt="">
                                 </div>
                             </div>
                             <div class="top">
                                 <div class="login">
                                     <a href="@auth{{localeRoute('profile')}}@else{{localeRoute('login')}}@endauth">
                                         <div class="icon">
                                             <img src="{{asset('img/icon/profile'. (isset($header) && $header == "inner-page" ? 'sticky' : '') .'.svg')}}" alt="profile">
                                         </div>
                                         <span>@auth {{Auth::user()->name}} @else Login @endauth</span>
                                     </a>
                                 </div>
                                 <div class="lang">
                                     <div class="dropdown">
                                         <a class="btn btn-secondary dropdown-toggle" href="#" role="button"
                                             id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="true">
                                             <span>
                                                 <img src="{{asset('img/icon/'.app()->getLocale().'.png')}}" alt="{{app()->getLocale()}}">
                                                 <i>
                                                     {{strtoupper(app()->getLocale())}}
                                                 </i>
                                             </span>
                                         </a>
                                         <ul class="dropdown-menu " aria-labelledby="dropdownMenuLink"
                                             data-bs-popper="static">
                                             @foreach($langs as $lang)
                                            <li><a @class(["dropdown-item", "active" => $lang->code == app()->getLocale()]) href="{{getLangLink($lang->code)}}">{{$lang->title}}</a></li>
                                            @endforeach
                                         </ul>
     
                                     </div>
                                 </div>
                                 <div class="menu">
                                     <button>
                                         <img class="menu menu_white" src="{{asset('img/icon/menu'. (isset($header) && $header == "inner-page" ? 'b' : '') .'.svg')}}" alt="">
                                         <img class="menu menu_blue" src="{{asset('img/icon/menub.svg')}}" alt="">
                                         <img class="close" src="{{asset('img/icon/close.png')}}" alt="">
                                     </button>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
         <div class="hidden-menu">
             <div class="menu-top">
                 <div class="top">
                     <div class="login">
                         <a href="">
                             <div class="icon">
                                 <img src="{{asset('img/icon/profile.svg')}}" alt="">
                             </div>
                             <span>Log in</span>
                         </a>
                     </div>
                     <div class="lang">
                         <div class="dropdown">
                             <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                 data-bs-toggle="dropdown" aria-expanded="true">
                                 <span>
                                     <img src="{{asset('img/icon/en.svg')}}" alt="">
                                     <i>
                                         DE
                                     </i>
                                 </span>
                             </a>
                             <ul class="dropdown-menu " aria-labelledby="dropdownMenuLink" data-bs-popper="static">
                                 <li><a href="">English</a></li>
                                 <li><a href="">Arabic</a></li>
                             </ul>
     
                         </div>
                     </div>
                     <div class="menu2">
                         <button>
                             <img class="close" src="{{asset('img/icon/close.png')}}" alt="">
                         </button>
                     </div>
                 </div>
             </div>
             <div class="links">
                 <ul>
                     <li><a href="{{ localeRoute('WhyChoose') }}">{{text('Why_Choose_Turkey_header')}}</a></li>
                     <li><a href="{{ localeRoute('howItWork') }}">{{text('How_it_works_header')}}</a></li>
                     <li><a href="{{ localeRoute('Whatweoffer') }}">{{text('What_we_offer_header')}}</a></li>
                     <li><a href="{{ localeRoute('Whoweare') }}">{{text('Who_Are_We_header')}}</a></li>
                     <li><a href="{{ localeRoute('blogs.index') }}">{{text('Blog')}}</a></li>
                     <li><a href="{{localeRoute('contactUs.index')}}">{{text('Contact')}}</a></li>
                 </ul>
             </div>
             <div class="action">
                 <a href="{{ localeRoute('products.index') }}" class="btn btn-primary icon-btn">{{text('product_and_services')}} <div class="icon"><i
                             class="fa-solid fa-arrow-right"></i></div></a>
             </div>
             <div class="mail-sec">
                 <div class="icon">
                     <img src="{{asset('img/icon/eposta'. (isset($header) && $header == "inner-page" ? 'red' : '') .'.svg')}}" alt="">
                 </div>
                 <a href="">{{$contactUs->email}}</a>
             </div>
             <div class="social-media">
                 <ul>
                     <li><a href="{{$contactUs->facebook}}"><img src="{{asset('img/icon/facebook.svg')}}" alt=""></a></li>
                     <li><a href="{{$contactUs->youtube}}"><img src="{{asset('img/icon/youtube.svg')}}" alt=""></a></li>
                     <li><a href="{{$contactUs->instagram}}"><img src="{{asset('img/icon/instagram.svg')}}" alt=""></a></li>
                 </ul>
             </div>
             <div class="search-box">
                 <div class="content">
                     <input type="text" class="form-control" placeholder="Search">
                     <div class="icon">
                         <img src="{{asset('img/icon/search2.svg')}}" alt="">
                     </div>
                 </div>
             </div>
         </div>
     </div>
  </div>

<!-- loading --------------------- -->
<div class="loader">
    <div class="gooey">
    <span class="dot"></span>
    <div class="dots">
       <span></span>
       <span></span>
       <span></span>
    </div>
    </div>
 </div>
 <!-- loading --------------------- -->
 
 <!-- cookie --------------------- -->
 <div class="card cookie-alert">
   <div class="card-body">
      <div class="text-content">
      <h5 class="card-title">We Value Your Privacy</h5>
      <p class="card-text">We use cookies to enhance your browsing experience, serve personalized ads or content, and analyze our traffic. By clicking "Accept All", you consent to our use of cookies.</p>
      </div>
      <div class="btn-toolbar"> 
      <button class="btn btn-primary accept-cookies">Customize</button>
            <button class="btn btn-secondary ">Accept All</button>
            <button class="btn btn-secondary ">Reject All</button>
      </div>
   </div>
 </div>     
 <!-- cookie --------------------- -->