@extends('layout.app', ["header" => "inner-page"])

@section('content')
<div class="page-content gray-bg">
    <div class="container">
        <div class="prfile-sec">

            <div class="row">
                <div class="col-md-12 col-lg-3 sidebar" data-aos="fade-up" data-aos-duration="1000">
                    <div class="content desktop">
                        <div class="details">

                            <div class="links-tree">
                                <ul>
                                    <li>
                                        <a href=""><i class="fa-solid fa-house"></i></a>
                                    </li>
                                    <li><a href="">Your Profile</a></li>
                                </ul>
                            </div>
                            <div class="links">
                                <ul>
                                    <li><a href="{{localeRoute('profile')}}">{{text('Account_Settings')}}</a></li>
                                    <li><a href="{{localeRoute('billing')}}">{{text('Billing_Details')}}</a></li>
                                    <li><a href="{{localeRoute('myOffers')}}">{{text('My_Offers')}}</a></li>
                                    <li><a href="{{localeRoute('myApplications')}}">{{text('My_Applications')}}</a></li>
                                </ul>
                            </div>
                            <div class="bottom">
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#logoutModal">
                                    <span>{{text('Log_out')}}</span>
                                    <img src="{{asset('img/icon/logout.svg')}}" alt="">
                                </button>

                            </div>
                        </div>
                    </div>
                    <div class="content mobile">
                        <div class="details">

                            <div class="links-tree">
                                <ul>
                                    <li>
                                        <a href=""><i class="fa-solid fa-house"></i></a>
                                    </li>
                                    <li><a href="">{{text('Your_Profile')}}</a></li>
                                </ul>
                                <div class="bottom">
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#logoutModal">
                                    <span>{{text('Log_out')}}</span>
                                    <img src="{{asset('img/icon/logout.svg')}}" alt="">
                                </button>

                            </div>
                            </div>
                            <div class="links">
                                <ul>
                                    <li><a href="{{localeRoute('profile')}}">{{text('Account_Settings')}}</a></li>
                                    <li><a href="{{localeRoute('billing')}}">{{text('Billing_Details')}}</a></li>
                                    <li><a href="{{localeRoute('myOffers')}}">{{text('My_Offers')}}</a></li>
                                    <li><a href="{{localeRoute('myApplications')}}">{{text('My_Applications')}}</a></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-9 rightbar" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="200">
                    @yield('page-content')
                </div>
            </div>
        </div>

    </div>
</div>


    <!-- logout ==---------------------------- -->

    <!-- Modal -->
    <div class="modal fade" id="logoutModal" tabindex="-1" aria-labelledby="logoutModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered logout-modal">
            <div class="modal-content"> 
                <div class="modal-body">
                   <div class="text">
                   <h3>{{text('Are_you_about_logout')}}</h3>
                    <p>{{text('log_out_modal_message')}}</p>
                   </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{{text('No')}}</button>
                    <a href="{{ localeRoute('logout') }}"
                    onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();" class="btn btn-primary">{{text('Yes')}}</a>
                </div>
                <form id="logout-form" action="{{ localeRoute('logout') }}" method="POST" class="d-none">
                    @csrf
                </form>
            </div>
        </div>
    </div>
    <!-- logout ==---------------------------- -->
@endsection