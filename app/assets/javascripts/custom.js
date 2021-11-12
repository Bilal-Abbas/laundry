jQuery(document).ready(function ($) {
  $("#slider3").responsiveSlides({
    auto: true,
    pager: true,
    nav: false,
    speed: 500,
    namespace: "callbacks",
    before: function () {
      $('.events').append("<li>before event fired.</li>");
    },
    after: function () {
      $('.events').append("<li>after event fired.</li>");
    }
  });
});


jQuery(document).ready(function ($) {
  $(".scroll ").click(function (event) {
    event.preventDefault();

    $('html,body').animate({
      scrollTop: $(this.hash).offset().top
    }, 1000);
  });
});

jQuery(document).ready(function ($) {
  $().UItoTop({
    easingType: 'easeOutQuart'
  });
})

jQuery(function ($) {
  $(".swipebox").swipebox();
});

jQuery(function ($) {
  $('.row2').adipoli({
    'startEffect': 'overlay',
    'hoverEffect': 'sliceDown'
  });
});

// jQuery(function ($) {
//   $("#datepicker1,#datepicker2").datepicker();
// });

jQuery(document).ready(function ($) {
  $('#owl-demo').owlCarousel({
    items: 1,
    lazyLoad: true,
    autoPlay: false,
    navigation: true,
    navigationText: true,
    pagination: true,
  });
})