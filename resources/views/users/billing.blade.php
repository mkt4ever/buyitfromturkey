@extends('layout.user')
@section('page-content')

<div class="col-md-12 col-lg-9 rightbar" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="200">
    <div class="main-title">
        <h3>{{text('Billing_Details')}}</h3>

        <div class="add-addres">
            <a href="#" class="addNewAddressButton">
                <span>{{ text('Add new address') }}</span>
                <div class="icon">
                    <i class="fa-solid fa-plus"></i>
                </div>
            </a>
        </div>

    </div>
    <div class="sec-content">
        <div class="addreses">
            <div class="row">
                @foreach ($billings as $billing)
                    <div class="item col-md-6 col-lg-6 col-xl-4">
                        <div class="content">
                            <div class="top">
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="fa-solid fa-ellipsis-vertical"></i>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="{{localeRoute('billing.markAsDefault', ["id" => $billing->id])}}">{{text('Mark_as_Default')}}</a></li>
                                        {{-- <li><a class="dropdown-item" href="#">{{text('Update')}}</a></li> --}}
                                        <li><a class="dropdown-item" href="{{localeRoute('billing.delete',["id" => $billing->id])}}">{{text('Delete')}}</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="center">
                                <ul>
                                    <li>
                                        <span>{{text('Address_Definition')}}</span>
                                        <em>{{$billing->title}}</em>
                                    </li>
                                    <li>
                                        <span>{{text('Address')}}</span>
                                        <em>{{$billing->address}}</em>
                                    </li>
                                </ul>
                            </div>
                            <div class="bottom">
                                {{-- <a href="">{{text('Detail')}}</a> --}}
                            </div>
                        </div>
                    </div>
                @endforeach
                
            </div>

        </div>
        <div class="addres-type">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#tab1" type="button" role="tab" aria-controls="tab1" aria-selected="true">{{text('Individual')}}</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link " data-bs-toggle="tab" data-bs-target="#tab2" type="button" role="tab" aria-controls="tab2" aria-selected="true">{{text('Institutional')}}</button>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                
                <div class="tab-pane fade show active" id="tab1" role="tabpanel" tabindex="0">
                    <form action="{{localeRoute('billing.store')}}?type=Individual" method="POST">
                        @csrf
                        <div class="row">
                            
                            <div class="col-md-6 col-lg-4 mb-2 item">
                                <label class="form-label">{{ text('Billing_Title') }}</label>
                                <input type="text" name="billing_title" class="form-control" required placeholder="{{ text('Home/Work/Other') }}">
                            </div>
                            <div class="col-md-6 col-lg-4 mb-2 item">
                                <label class="form-label">{{ text('Name') }}</label>
                                <input type="text" name="name" class="form-control" required placeholder="{{ text('Name') }}">
                            </div>
                            <div class="col-md-6 col-lg-4 mb-2 item">
                                <label class="form-label">{{ text('Last_Name') }}</label>
                                <input type="text" name="last_name" class="form-control" required placeholder="{{ text('Last_Name') }}">
                            </div>
                            <div class="col-md-6 col-lg-4 mb-2 item">
                                <label class="form-label">{{ text('Country') }}</label>
                                <input type="text" name="country" class="form-control" required placeholder="{{ text('Country') }}">
                            </div>
                            <div class="col-md-6 col-lg-4 mb-2 item">
                                <label class="form-label">{{ text('City') }}</label>
                                <input type="text" name="city" class="form-control" required placeholder="{{ text('City') }}">
                            </div>
                            <div class="col-md-6 col-lg-4 mb-2 item">
                                <label class="form-label">{{ text('District') }}</label>
                                <input type="text" name="district" class="form-control" required placeholder="{{ text('District') }}">
                            </div>
                            <div class="col-md-6 col-lg-4 mb-2 item">
                                <label class="form-label">{{ text('tax_number') }}</label>
                                <input type="text" name="tax_number" class="form-control" placeholder="{{ text('tax_number') }}">
                            </div>
                            <div class="col-md-12 col-lg-8 mb-2 item">
                                <label class="form-label">{{ text('Address') }}</label>
                                <textarea name="address" class="form-control" cols="30" rows="4" placeholder="{{ text('Your_Adress') }}"></textarea>
                            </div>
                            <div class="action-sec">
                                {!! htmlFormButton(text('Send').' <div class="icon"><i class="fa-solid fa-arrow-right"></i></div>', ['class' => "btn btn-primary icon-btn"]) !!}
                            </div>
                            
                        </div>
                    </form>
                </div>
                <div class="tab-pane fade" id="tab2" role="tabpanel" tabindex="0">
                    <form action="{{localeRoute('billing.store')}}?type=Institutional" method="POST">
                        @csrf
                        <div class="row">
                            
                            <div class="col-md-6 col-lg-4 mb-2 item">
                                <label class="form-label">{{ text('Billing_Title') }}</label>
                                <input type="text" name="billing_title" class="form-control" required placeholder="{{ text('Home/Work/Other') }}">
                            </div>
                            <div class="col-md-6 col-lg-4 mb-2 item">
                                <label class="form-label">{{ text('Name') }}</label>
                                <input type="text" name="name" class="form-control" required placeholder="{{ text('Name') }}">
                            </div>
                            <div class="col-md-6 col-lg-4 mb-2 item">
                                <label class="form-label">{{ text('Last_Name') }}</label>
                                <input type="text" name="last_name" class="form-control" required placeholder="{{ text('Last_Name') }}">
                            </div>
                            <div class="col-md-6 col-lg-4 mb-2 item">
                                <label class="form-label">{{ text('Country') }}</label>
                                <input type="text" name="country" class="form-control" required placeholder="{{ text('Country') }}">
                            </div>
                            <div class="col-md-6 col-lg-4 mb-2 item">
                                <label class="form-label">{{ text('City') }}</label>
                                <input type="text" name="city" class="form-control" required placeholder="{{ text('City') }}">
                            </div>
                            <div class="col-md-6 col-lg-4 mb-2 item">
                                <label class="form-label">{{ text('District') }}</label>
                                <input type="text" name="district" class="form-control" required placeholder="{{ text('District') }}">
                            </div>
                            <div class="col-md-6 col-lg-4 mb-2 item">
                                <label class="form-label">{{ text('tax_number') }}</label>
                                <input type="text" name="tax_number" class="form-control" placeholder="{{ text('tax_number') }}">
                            </div>
                            <div class="col-md-12 col-lg-8 mb-2 item">
                                <label class="form-label">{{ text('Address') }}</label>
                                <textarea name="address" class="form-control" cols="30" rows="4" placeholder="{{ text('Your_Adress') }}"></textarea>
                            </div>
                            <div class="action-sec">
                                {!! htmlFormButton(text('Send').' <div class="icon"><i class="fa-solid fa-arrow-right"></i></div>', ['class' => "btn btn-primary icon-btn"]) !!}
                            </div>
                            
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection
@push('js')
<script>
    $(".addNewAddressButton").click(function(){
        $(".addres-type").slideToggle();
    });
</script>
@endpush

<!-- Modal -->
{{-- <div class="modal fade" id="addressModal" tabindex="-1" aria-labelledby="addressModalLabel" aria-hidden="false">
    <div class="modal-dialog modal-dialog-centered logout-modal">
        <div class="modal-content"> 
            
        </div>
    </div>
</div> --}}