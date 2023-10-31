<input type="hidden"
       class="form-control"
       id="location"
       name="{{ $row->field }}"
       data-name="{{ $row->display_name }}"
       @if($row->required == 1) required @endif
       value="@if(isset($dataTypeContent->{$row->field})){{ old($row->field, $dataTypeContent->{$row->field}) }}@else{{old($row->field)}}@endif">

<div class="row">
    <div class="col-12">
        <div id="map" style="width: 100%;min-height: 300px;"></div>
    </div>
</div>

@push('javascript')
<script
        src="https://maps.googleapis.com/maps/api/js?key={{config('app.mapKey')}}&libraries=drawing&callback=initMap"
        async defer></script>
<script>
    var marker;
    var map;
    function initMap(p) {
            map = new google.maps.Map(document.getElementById("map"), {
            @if(isset($dataTypeContent->{$row->field}))
            center: {
                lat: {{ json_decode(old($row->field, $dataTypeContent->{$row->field}))[0] }},
                lng: {{ json_decode(old($row->field, $dataTypeContent->{$row->field}))[1] }}
            },
            @else
            center: {lat: 41.0082, lng: 28.9784},
            @endif
            zoom: 14,
            scaleControl: false,
            streetViewControl: false,
            mapTypeControl: false
        });
        
        
        @if(isset($dataTypeContent->{$row->field}))
        marker = new google.maps.Marker({
            position: new google.maps.LatLng({{ json_decode(old($row->field, $dataTypeContent->{$row->field}))[0] }} , {{ json_decode(old($row->field, $dataTypeContent->{$row->field}))[1] }} ),
                map:map,
                icon:'{{asset("/img/marker.png")}}'
            });
        @endif

        google.maps.event.addListener(map,'click',function(event){
            if (marker != null)
                marker.setMap(null);
            marker = new google.maps.Marker({
                position: event.latLng,
                map:map,
                icon:'{{asset("/img/marker.png")}}'
            });
            $("#location").val('["'+event.latLng.lat()+'","'+event.latLng.lng()+'"]');
        });
    }
    </script>
@endpush