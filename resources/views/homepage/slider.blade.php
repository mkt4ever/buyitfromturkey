<section class="slider-section">
    <div class="right-search-bar">
        <div class="m-content">

            <div class="bottom">
                <div class="title">
                    <h3>{{ text('right-search-bar-title') }}</h3>
                </div>
                <form action="{{localeRoute('products.index')}}" id="homepage_searchForm">
                    <div class="search-box">
                        <input type="text" name="search" placeholder="{{ text('Searching') }}" class="form-control">
                        <div class="icon search-icon">
                            <img src="{{asset('img/icon/search.svg')}}" alt="">
                        </div>
                    </div>
                </form>
                <div class="boxes">
                    @foreach ($productSectors as $sector)

                        <div class="item">
                            <div class="content">
                                <a href="{{ localeRoute('products.index', ["sector" => $sector->slug]) }}">
                                    <h5>{{ $sector->title }}</h5>
                                    <div class="icon">
                                        <img src="{{ parse_file($sector->image) }}" alt="{{$sector->title}}">
                                    </div>
                                    <div class="action">
                                        <i class="fa-solid fa-arrow-right"></i>
                                    </div>
                                </a>
                            </div>
                        </div>

                    @endforeach


                </div>
            </div>

        </div>
    </div>
    <div class="owl-carousel owl-theme main-slider" id="slider">
        @foreach ($sliders as $slider)

            <div class="item">
                <div class="image">
                    <img src="{{ Voyager::image($slider->image) }}" alt="{{ $slider->title }}">
                </div>
                <div class="text">
                    <div class="container">
                        <div class="content">
                            <h3>{!! $slider->title !!}</h3>
                            <p>{{ $slider->brief }}</p>
                            @if($slider->link)
                            <ul>
                                <li><a href="{{ $slider->link }}" class="btn btn-primary icon-btn">{{text('Get_an_Offer')}} <div class="icon"><i
                                                class="fa-solid fa-arrow-right"></i></div></a></li>
                            </ul>
                            @endif
                        </div>
                    </div>
                </div>
            </div>

        @endforeach




    </div>

    <div class="social-media">
        <div class="content">

            <ul>
                <li><a href="{{ $contactUs->facebook }}"><img src="{{asset('img/icon/facebook.svg')}}" alt="{{ $contactUs->facebook }}"></a></li>
                <li><a href="{{ $contactUs->youtube }}"><img src="{{asset('img/icon/youtube.svg')}}" alt="{{ $contactUs->youtube }}"></a></li>
                <li><a href="{{ $contactUs->instagram }}"><img src="{{asset('img/icon/instagram.svg')}}" alt="{{ $contactUs->instagram }}"></a></li>
            </ul>
        </div>

    </div>
    <div class="categories-sec">
        <div class="container">
            <div class="items">
                <div class="boxes">
                    @foreach ($productSectors as $sector)

                        <div class="itemm">
                            <div class="content">
                                <a href="{{ localeRoute('products.index', ["sector" => $sector->slug]) }}">
                                    <h5>{{ $sector->title }}</h5>
                                    <div class="icon">
                                        <img src="{{ parse_file($sector->image) }}" alt="{{ $sector->title }}">
                                    </div>
                                    <div class="action">
                                        <i class="fa-solid fa-arrow-right"></i>
                                    </div>
                                </a>
                            </div>
                        </div>

                    @endforeach


                </div>
            </div>
        </div>
    </div>

    <div class="slider-other">
        <div class="container">

            <div class="omline-support">
                
                <div class="chat-container p-0 rounded-4" style="display: none;">
                    <div class="d-flex justify-content-center">
                        <div class="card">
                            <div class="cardHeader">
                                <div class="d-flex flex-row justify-content-between p-3 adiv text-white">
                                    <i onclick="toggleChat()" class="fas fa-chevron-left" style="cursor: pointer;"></i>
                                    <span class="pb-3">BotAI Chat</span>
                                    <i onclick="showConfirmationButtons()" class="fas fa-times" style="cursor: pointer;"></i>
                                </div>
                            </div>
                            {{-- Messages will show here --}}
                            <div class="Chatcard">
                                <div class="d-flex flex-row px-3 py-1">
                                    <img src="https://img.icons8.com/color/48/000000/circled-user-female-skin-type-7.png"
                                        width="30" height="30">
                                    <div class="chat ms-2 px-3 py-1">
                                        Hello and thank you for visiting Buy it from Turkey. I will be happy to help you
                                    </div>
                                </div>
                                
                            </div>
                            <div class="confirmation" style="display: none">
                                <div class="text-center px-3 py-3">
                                    Are you sure to end this ?
                                </div>
                                <div class="d-flex justify-content-center">
                                    
                                    <button onclick="destroyThread()" class="btn btn-sm btn-secondary me-2 px-4 py-0">Yes</button>
                                    <button onclick="hideConfirmationButtons()" class="btn btn-sm btn-primary me-2 px-4 py-0">No</button>
                                </div>
                            </div>
                                       
                            <div class="form-group p-3">
                                <input type="text" id="message-input" class="form-control" placeholder="Type your message" onkeydown="if (event.key === 'Enter') sendMessage()">
                            </div>
                        </div>
                    </div>
                </div>
                <a onclick="toggleChat()">
                    <img style="cursor: pointer;" src="{{ asset('img/icon/online.svg') }}" alt="">
                </a>
            </div>
            <div class="whoweare">
                <div class="content">
                    <a href="{{ localeRoute('Whoweare') }}">
                        <div class="image">
                            <img src="{{Voyager::image($contactUs->whoarewe_image)}}" alt="">
                        </div>
                        <div class="title">
                            <h3>{{text('Who_Are_We_header')}}</h3>
                        </div>
                        <div class="icon">
                            <img src="{{asset('img/icon/zoom.png')}}" alt="">
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="slider-dots">
        <ul>
            <li class="active" id="active-item-indicator"></li>
            <li>{{str_pad($sliders->count(), 2, '0', STR_PAD_LEFT)}}</li>
        </ul>
    </div>
</section>

<script>

    var isFirst = 1 ;

    function toggleChat() {
        var chatContainer = document.querySelector('.chat-container');
        chatContainer.style.display = (chatContainer.style.display === 'none' || chatContainer.style.display === '') ? 'block' : 'none';
    }
    function scrollToBottom() {
        var chatContainer = $('.card');
        chatContainer.scrollTop(chatContainer.prop('scrollHeight'));
    }

    function sendMessage() {

        // Get the message from the input field
        var message = document.getElementById('message-input').value;

        if (!message) {
            return;
        }
        // Clear the input field
        document.getElementById('message-input').value = '';

        var SendermessagesContainer = document.querySelector('.Chatcard'); // Assuming this is the container for messages
        SendermessagesContainer.innerHTML += '<div class="d-flex flex-row-reverse px-3 py-1"><img src="https://img.icons8.com/color/48/000000/circled-user-male-skin-type-7.png" width="30" height="30"><div class="bg-white me-2 px-3 py-1"><span class="text-muted">'+ message +'</span></div></div>';

        console.log(message) ;

        var reverseElements = SendermessagesContainer.querySelectorAll('.flex-row-reverse');
        // console.log('Number of elements with class flex-row-reverse:', reverseElements.length);

        var url = '/chatBot?message=' + encodeURIComponent(message) + '&isFirst=' + isFirst;


        fetch(url, {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json',
                // You may need to include additional headers depending on your API requirements
            },
            // body: JSON.stringify({ message: message }),
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            // Handle the response data as needed
            var messagesContainer = document.querySelector('.Chatcard'); // Assuming this is the container for messages
            messagesContainer.innerHTML += '<div class="d-flex flex-row px-3 py-1"><img src="https://img.icons8.com/color/48/000000/circled-user-female-skin-type-7.png" width="30" height="30"><div class="chat ms-2 px-3 py-1">' + data + '</div></div>';
            scrollToBottom() ;

            isFirst = 0 ;
            console.log(data);
            console.log(messagesContainer);

        })
        .catch(error => {
            // Handle errors during the fetch
            console.error('Error during fetch:', error);
        });

        scrollToBottom() ;
        

        
    }


    function showConfirmationButtons() {
        var confirmationDiv = document.querySelector('.confirmation');
        confirmationDiv.style.display = 'block';

    }

    function hideConfirmationButtons(){
        var confirmationDiv = document.querySelector('.confirmation');
        confirmationDiv.style.display = 'none';
    }
    function destroyThread(){

        var url = '/destroy'

        fetch(url, {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json',
            },
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            console.log(data);

            var messagesContainer = document.querySelector('.Chatcard');
            hideConfirmationButtons() ;
            messagesContainer.innerHTML += '<div class="d-flex flex-row px-3 py-1"><img src="https://img.icons8.com/color/48/000000/circled-user-female-skin-type-7.png" width="30" height="30"><div class="chat ms-2 px-3 py-1">' + data + '</div></div>';
            messagesContainer.innerHTML += '<div class="text-center"><p>-------------------------------</p></div>'
            
            scrollToBottom() ;

            isFirst = 1 ;


        })
        .catch(error => {
            console.error('Error during fetch:', error);
        });
        
    }
</script>

