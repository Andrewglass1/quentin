$(document).ready(function(){

  var max_pages = parseInt($("#video-slider-list").attr('data-maxspots'));

  $("#move-left").click(function(e) {
    e.preventDefault();
    current_spot = parseInt($("#video-slider-list").attr('data-current'));
    turnToSpot(current_spot - 1);
  })

  $("#move-right").click(function(e) {
    e.preventDefault();
    current_spot = parseInt($("#video-slider-list").attr('data-current'));
    turnToSpot(current_spot + 1);
  })

  $(".video-page").click(function(e) {
    e.preventDefault();
    new_spot = parseInt($(this).attr('data-id'));
    turnToSpot(new_spot);
  });

  function turnToSpot(new_spot){
    if(new_spot >= 1 && new_spot <= max_pages){
      distance_interval = 640

      new_position = distance_interval * (new_spot -1)

      $("#video-slider-list").attr('data-current', new_spot)

      $('#video-slider-list').animate({
          right: new_position}, 300, 'swing');

      $(".video-page").removeClass("active-video-page");
      $(".video-page[data-id='" + new_spot +"']").addClass("active-video-page")
    }
  };
});

