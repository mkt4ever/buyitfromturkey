
// datepicker  --------------------
$(document).ready(function() {
  if($('#datepicker').length > 0)
    $('#datepicker').datepicker();
 try
{
 $("#datetimepicker").datetimepicker(); 
  
}
catch(e)
{
}
 
});

// datepicker  --------------------

// <!-- header/// -->
$(window).scroll(function() {
  if ($(this).scrollTop() > 1) {
      $('.header-section').addClass("sticky").fadeIn(1000);
      $(".main_logo").attr("src","/img/Logo/logo-b.png");
      $(".trnsparent .header-section .navbar .right .mail .icon img").attr("src","/img/icon/epostared.svg");
      $(".trnsparent .header-section .logo img").attr("src","/img/logo-main.svg");
      if (!$('.header-section').hasClass('menu-active')) {
      $(".trnsparent .header-section .top .login .icon img").attr("src","/img/icon/profilesticky.svg");
      
      }
  } else {
      $('.header-section').removeClass("sticky");
      $(".main_logo").attr("src","/img/Logo/logo-w.png");
      $(".innerpage .main_logo").attr("src","/img/Logo/logo-b.png");
      $(".trnsparent .header-section .navbar .right .mail .icon img").attr("src","/img/icon/eposta.svg");
      $(".trnsparent .header-section .logo img").attr("src","/img/Logo.svg");
      $(".trnsparent .header-section .top .login .icon img").attr("src","/img/icon/profile.svg");


  }
});
$(".innerpage .main_logo").attr("src","/img/Logo/logo-b.png");
// <!-- header/// -->



// toggle menu -------------------
$(".header-section .top .menu button").click(function(){
  $(".right-search-bar").toggleClass('is-active');  
  $(this).toggleClass('active');  
  $(".header-section .hidden-menu").toggleClass('active');
  $(".header-section").toggleClass('menu-active');

});
$(".header-section .hidden-menu .menu2 button").click(function(){
  $(".right-search-bar").toggleClass('is-active');  
  $(this).toggleClass('active');  
  $(".header-section .hidden-menu").toggleClass('active');
  $(".header-section").toggleClass('menu-active');

});
$(".close_btn").click(function(){
  $(".header-section .links").toggleClass('is-active');  
});
$(".header-section .overlay").click(function () {
  $(".header-section .links").toggleClass('is-active');
  $(".header-section .overlay").toggleClass('ac');
  $(".hamburger").toggleClass('is-active');
});




var forEach=function(t,o,r){if("[object Object]"===Object.prototype.toString.call(t))for(var c in t)Object.prototype.hasOwnProperty.call(t,c)&&o.call(r,t[c],c,t);else for(var e=0,l=t.length;l>e;e++)o.call(r,t[e],e,t)};

    var hamburgers = document.querySelectorAll(".hamburger");
    if (hamburgers.length > 0) {
      forEach(hamburgers, function(hamburger) {
        hamburger.addEventListener("click", function() {
          this.classList.toggle("is-active");
          $(".header-section .links").toggleClass('is-active'); 
          $(".header-section .overlay").toggleClass('ac'); 
          
        }, false);
      });
    }
// toggle menu -------------------
 
// open modal -------------------
$(window).on('load', function() {
  // $('#login').modal('show');
}); 
// open modal -------------------


// nice select --------------------
$(document).ready(function() {
  $('.nice-select').niceSelect();
  $(".search-icon").click(function(){
    $('#homepage_searchForm').submit();
  });
});  
// nice select --------------------






 
// page active --------------------
$(document).ready(function(){
  $(function($) {
     var path = window.location.href;
     $('.menu .navbar .links ul li.list_item a').each(function() {
     if (this.href === path) {
        $(this).addClass('active');
     }
     });
  });
});
// page active --------------------
 
// select2  --------------------

$(document).ready(function() {
	$('.js-example-basic-multiple').select2();
	$('.js-example-basic-single').select2(); 
	  $('.withoutSearch').select2();
  }); 
  
  // select2  --------------------

  // show more faq  --------------------
  $(".page-content .faq-sec .show-more button").click(function(){
    $(this).toggleClass('active');  
    $(".page-content .faq-sec .boxes .main-content .hidden").toggleClass('active');
  
  });
  // show more faq  --------------------


  
  // blog  --------------------
  $(".page-content .blog-page .page-link .show-more button").click(function(){
    $(this).toggleClass('active');  
    $(".hidden-blog").toggleClass('active');
  
  });
  // blog  --------------------
  


// blog  --------------------
 
  $(".products-section .search-box .actions ul li button").click(function() {
    $('html, body').animate({
        scrollTop: $(".products-boxes").offset().top
    }, 2000);
});
  // blog  --------------------


  $(document).ready(function(){
    $(window).scroll(function () {   
     if($('.page-content .prfile-sec .sidebar .content.desktop').length > 0){
       if($(window).scrollTop() > 60) {
          $('.page-content .prfile-sec .sidebar .content.desktop').css('position','fixed');
          $('.page-content .prfile-sec .sidebar .content.desktop').css('top','100px'); 
       }
       else if ($(window).scrollTop() <= 200) {
          $('.page-content .prfile-sec .sidebar .content.desktop').css('position','');
          $('.page-content .prfile-sec .sidebar .content.desktop').css('top','');
       }  
          if ($('.page-content .prfile-sec .sidebar .content.desktop').offset().top + $(".page-content .prfile-sec .sidebar .content.desktop").height() > $(".footer-section").offset().top) {
              $('.page-content .prfile-sec .sidebar .content.desktop').css('top',-($(".page-content .prfile-sec .sidebar .content.desktop").offset().top + $(".page-content .prfile-sec .sidebar .content").height() - $(".footer-section").offset().top));
          }
     }
    });
    });

// tabs on hover --------------------------------
$(document).ready(function(){
  $(".page-content .ourvalue-section .boxes .item .icon button.nav-link").hover(function(){
    $(this).tab('show');
});
})

// tabs on hover --------------------------------

// full map --------------------------------
$(".products-section .map-sec .zoom-btn button").click(function(){
  $('.products-section .search-box').toggleClass('active');   
  $('.products-section .map-sec').toggleClass('active');   

});
// full map --------------------------------


// loader  -------------------- 
$(window).on('load', function () {
  $(".loader").hide(); 
}) 

// loader  --------------------


$('#whoweare').owlCarousel({
  dots: false,
  loop: true,
  margin: 10,
  autoplay: true,
  autoplayTimeout: 6000,
  nav: true, // Show next and prev buttons
  slideSpeed: 500,
  autoplayHoverPause: true,
  smartSpeed: 1000,
  responsiveClass: true,
  navText: [
      "<i class='fa-solid fa-chevron-left'></i>",
      "<i class='fa-solid fa-chevron-right'></i>"
  ],
  responsive: {
      0: {
          items: 2,
      },
      400: {
          items: 2,
      },
      600: {
          items: 2,
      },
      768: {
          items: 2,
      },
      1000: {
          items: 2,
      },
      1200: {
          items: 3,
      },
      1400: {
          items: 3,
      }
  }
});
$('.footer').owlCarousel({
      dots: false,
      loop: true,
      margin: 10,
      autoplay: true,
      autoplayTimeout: 6000,
      nav: false, // Show next and prev buttons
      slideSpeed: 500,
      autoplayHoverPause: true,
      smartSpeed: 1000,
      responsiveClass: true,
      navText: [
          "<i class='fa-solid fa-chevron-left'></i>",
          "<i class='fa-solid fa-chevron-right'></i>"
      ],
      responsive: {
          0: {
              items: 1,
          },
          400: {
              items: 1,
          },
          600: {
              items: 1,
          },
          768: {
              items: 2,
          },
          1000: {
              items: 2,
          },
          1200: {
              items: 3,
          }
      }
  });
  $('#blog').owlCarousel({
    dots: false,
    loop: true,
    margin: 10,
    autoplay: true,
    autoplayTimeout: 6000,
    nav: true, // Show next and prev buttons
    slideSpeed: 500,
    autoplayHoverPause: true,
    smartSpeed: 1000,
    responsiveClass: true,
    navText: [
        "<i class='fa-solid fa-chevron-left'></i>",
        "<i class='fa-solid fa-chevron-right'></i>"
    ],
    responsive: {
        0: {
            items: 1,
        },
        400: {
            items: 1,
        },
        600: {
            items: 1,
        },
        768: {
            items: 1,
        },
        1000: {
            items: 1,
        },
        1200: {
            items: 1,
        }
    }
});

