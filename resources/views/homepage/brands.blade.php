<section class="brans-section">
    <div class="title" data-aos="fade-up" data-aos-duration="1000">
        <h3>{{ text('homepage_brands_title') }}</h3>
    </div>
    <div class="boxes" data-aos="fade-up" data-aos-duration="1000">
        @php
            $totalBrands = count($brands);
            $brandsPerRow = 8;
            $rows = ceil($totalBrands / $brandsPerRow);

            $brandChunks = array_chunk($brands->all(), $brandsPerRow);
        @endphp

        @for ($i = 0; $i < $rows; $i++)
        <div class="owl-carousel owl-theme brans-carousel">
            @foreach ($brandChunks[$i] as $brand)
            <div class="item">
                <div class="image">
                    <img src="{{ Voyager::image($brand->image) }}" alt="{{ $brand->title }}">
                </div>
            </div>
            @endforeach
        </div>
        @endfor
    </div>
</section>
