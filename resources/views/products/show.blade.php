@extends('layout.app', ["header" => "inner-page"])

@section('content')

<div class="page-content ">
    <div class="product-page">
        <div class="hero">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text" data-aos="fade-up" data-aos-duration="1000">
                        <h3>
                            {!! $product->title !!}
                        </h3>
                        <p>
                            {!! $product->brief !!}

                        </p>
                        <ul>
                            <li>
                                <a href="{{localeRoute('offer.store')}}" class="btn btn-secondary icon-btn">{{text('Get_an_Offer')}} <div class="icon"><i
                                            class="fa-solid fa-arrow-right"></i></div></a>
                            </li>
                            <li>
                                <div class="icon">
                                    <img src="{{asset('img/icon/about-phone.svg')}}" alt="">
                                </div>
                                <div class="details">
                                    <h4>{{text('Phone')}}</h4>
                                    <a href="tel:{{ $product->phone }}">{{ $product->phone }}</a>
                                </div>
                            </li>

                        </ul>
                    </div>
                    <div class="col-md-6 images" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="200">
                        <div class="row">

                            @php
                                $firstImage = array_shift($images);
                                $imageGroups = array_chunk($images, 2); 
                            @endphp

                            @if (count($imageGroups) > 0)
                                <div class="col-md-3 item">
                                    <div class="image">
                                        <img src="{{ Voyager::image($firstImage) }}" alt="Product Image">
                                    </div>
                                </div>

                                @for ($i = 0; $i < min(3, count($imageGroups)); $i++)
                                    <div class="col-md-3 item">
                                        @foreach ($imageGroups[$i] as $image)
                                            <div class="image">
                                                <img src="{{ Voyager::image($image) }}" alt="Product Image">
                                            </div>
                                        @endforeach
                                    </div>
                                @endfor
                            @else
                                <p>{!! text('no_images_avaliable') !!}</p>
                            @endif

                            
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="detailing-sec">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-5 text-sec" data-aos="fade-up" data-aos-duration="1000">
                        <div class="sectors">
                            <h3>{{text('Sectors')}}</h3>
                            <ul>
                                @foreach ($product->product_sectors as $sector)
                                    <li><a href="{{localeRoute('products.index', ["sector" => $sector->slug])}}">{{$sector->title}}</a></li>
                                @endforeach
                                
                            </ul>
                        </div>
                        <div class="tags">
                            <h3>{{text('Tags')}}</h3>
                            <ul>
                                @foreach ($product->product_tags as $tag)
                                    <li><a href="{{localeRoute('products.index', ["tag" => $tag->slug])}}"><img src="{{asset('img/icon/tag.svg')}}" alt=""><em>{{$tag->title}}</em></a></li>
                                @endforeach
                                

                            </ul>
                        </div>
                        <div class="locations">
                            <h3>{{text("Location")}}</h3>
                            {{-- <ul>
                                <li>
                                    <h4>İstanbul (4)</h4>
                                </li>
                                <li>
                                    <h4>Ankara (2)</h4>
                                </li>
                                <li>
                                    <h4>Manisa (1)</h4>
                                </li>
                            </ul> --}}
                            <div class="image">
                                <div id="map"></div>
                            </div>
                        </div>

                    </div>
                    <div class="icon col-md-12 col-lg-2" >
                        <img src="{{asset('img/illustrations/amblem.svg')}}" alt="">
                    </div>
                    <div class="col-md-12 col-lg-5 discreption" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="200">
                        {!! $product->content !!}
                    </div>
                </div>
            </div>
        </div>


        <div class="gallery-sec" >
            <div class="container">
                <div class="main-title" data-aos="fade-up" data-aos-duration="1000">
                    <h3>{{text('Gallery')}}</h3>
                </div>
                <div class="boxes" data-aos="fade-up" data-aos-duration="1000">
                    <div class="owl-carousel owl-theme" id="gallery-carousel">

                        @if(is_array($images))
                            @foreach ($images as $image)
                                <div class="item">
                                    <div class="image">
                                        <img src="{{Voyager::image($image)}}" alt="">
                                    </div>
                                </div>
                            @endforeach
                        @else
                            <p>{!! text('no_images_avaliable') !!}</p>
                        @endif
                        
                    </div>
                </div>
            </div>
        </div>

        @if($similars->count() > 0)
        <div class="similaritems-sec">
            <div class="container">

                <div class="main-title" data-aos="fade-up" data-aos-duration="1000">
                    <h3>{{text('Similar_Items')}}</h3>
                </div>
                <div class="boxes" data-aos="fade-up" data-aos-duration="1000">
                    <div class="row">
                        @foreach ($similars as $similar)
                            <div class="col-md-6 col-lg-4 col-xl-3 item">
                                <div class="details">
                                    <div class="content">
                                        <a href="{{localeRoute('products.show',$similar->slug)}}">
                                            <div class="image">
                                                <img src="{{Voyager::image($similar->thumbnail_image)}}" alt="">
                                            </div>
                                            <div class="bottom-s">

                                                <h4>{!!$similar->title!!}</h4>
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
        @endif


    </div>
</div>
@endsection
@push('js')
<script async defer src="https://maps.googleapis.com/maps/api/js?key={{config('app.mapKey')}}&libraries=drawing&callback=initMap" type="text/javascript"></script>
<script>
    var map;
    var markers = [];
    function initMap() {
        var customMapType = new google.maps.StyledMapType(
            mapStyles , {
                name: '{{text("general")}}'
            });

        var customMapTypeId = 'custom_style';

        var locations = [
            @if($product->coordinations)
            @php($location = json_decode($product->coordinations, true)) {
                content: `<div class="mapInfowindow">
                                </div>`,
                lat: {{$location[0]}},
                lng: {{$location[1]}},
                link: '{{localeRoute("products.show", ["slug" => $product->slug])}}',
                productId: '{{$product->id}}'
            },
            @endif
        ];


        map = new google.maps.Map(document.getElementById('map'), {
            zoom: 8,
            center: {
                lat: {{$location[0] ?? 39.5152904}},
                lng: {{$location[1] ?? 30.4062589}}
            },
            mapTypeControlOptions: {
                mapTypeIds: [customMapTypeId, google.maps.MapTypeId.ROADMAP]
            }
        });

        var infowindow = new google.maps.InfoWindow();
        var marker, i;

        for (i = 0; i < locations.length; i++) {

            marker = new google.maps.Marker({
                position: new google.maps.LatLng(locations[i].lat, locations[i].lng),
                map: map,
                icon: '{{asset("img/marker.png")}}',
                type: locations[i].type,
                projectId: locations[i].projectId,
                zIndex: 2,
                animation: google.maps.Animation.DROP,
            });

            markers.push(marker);
        }

        map.mapTypes.set(customMapTypeId, customMapType);
        map.setMapTypeId(customMapTypeId);
    }
</script>
@endpush