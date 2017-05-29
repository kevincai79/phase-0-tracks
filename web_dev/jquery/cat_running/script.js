

$(document).ready(function() {

  $('#start').click(function() {
    $('img').animate({left: '90%'}, 500);
  });

  $('#refresh').click(function(){
    location.reload();
  });

  $('div').hover(
    function() {
      $(this).addClass('purple');
    },
    function() {
      $(this).removeClass('purple');
    }
  );

  $('.circle').click(function() {
    $(this).fadeOut('slow');
  });

  $('.triangle').click(function() {
    $(this).fadeTo('slow', 0.2);
  });

  $('.oval').click(function(){
    $(this).css('border', '2px solid blue');
  });

});