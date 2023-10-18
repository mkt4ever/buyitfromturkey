@extends('layout.app', ["header" => "inner-page"])

@section('content')
<div class="page-content">
    <div class="container">
        <div class="text terms" data-aos="fade-up" data-aos-duration="1000">
            <h3>{{ $page->title }}</h3>
            {!! $page->content !!}
        </div>
    </div>
</div>
@endsection