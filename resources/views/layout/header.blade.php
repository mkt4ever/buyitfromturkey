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
        {!! $seo->meta !!}
    @endif
   @if($description)<meta name="description" content="{{ $description }}">@endif
   @if($keywords)<meta name="keywords" content="{{ $keywords }}">@endif
   @if($canonical)<link rel="canonical" href="{{ $canonical }}" />@endif
   @if($ogimage)<meta property="og:image" content="{{ $ogimage }}" />@endif
   <!-- <meta name="author" content="smartwork.com.tr"> -->
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
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('css/responsive.css') }}">

     {!! $seo->header_bottom !!}
</head>

<body>
    {!! $seo->body_top !!}
