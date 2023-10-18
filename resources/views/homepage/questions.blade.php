<section class="questions-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-6 faq" data-aos="fade-up" data-aos-duration="1500">
                <div class="content">
                    <h3>{{text('homepage_faq_title')}}</h3>
                    <p>{{text('homepage_faq_content')}}
                    </p>
                    <form action="{{localeRoute('contactUs.store')}}" method="post" id="contact-form">
                        @csrf
                    <div class="boxes">
                        <div class="row">

                            <div class="item col-md-12 col-xl-6">
                                <label for="" class="form-label">Name</label>
                                <input name="first_name" type="text" required class="form-control" placeholder="Your name">
                            </div>
                            <div class="item col-md-12 col-xl-6">
                                <label for="" class="form-label">Email</label>
                                <input name="email" type="email" required class="form-control" placeholder="@">
                            </div>
                            <div class="item col-md-12">
                                <label for="" class="form-label">Your Question</label>
                                <textarea name="message" required id="" cols="30" rows="3" class="form-control"
                                    placeholder="Write a your question"></textarea>
                            </div>
                        </div>
                        {!! htmlFormButton('Send <div class="icon"><i class="fa-solid fa-arrow-right"></i></div>', ['class' => "btn btn-secondary icon-btn"]) !!}
                    </div>
                    </form>
                </div>
            </div>
            <div class="col-md-12 col-lg-6 questions" data-aos="fade-up" data-aos-duration="1000">
                <div class="main-content">
                    <div class="accordion accordion-flush" id="accordionFlushExample">
                        @foreach ($faqs as $key => $faq)
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button @if ($key != 0) collapsed @endif" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#flush-collapse{{$faq->id}}" aria-expanded="false"
                                        aria-controls="flush-collapse{{$faq->id}}">
                                        {{$faq->title}}
                                    </button>
                                </h2>
                                <div id="flush-collapse{{$faq->id}}" class="accordion-collapse collapse @if ($key === 0) show @endif"
                                    data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        <div class="text">
                                            <p>
                                                {{$faq->content}}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                        


                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
