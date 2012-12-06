$(function() {
  t=150;
  $(".pic-thumb-container").hover(
    function() {
      $(this).children(".pic-thumb-descr").stop().animate({
        opacity: '1'
      },t);
      $(this).children(".pic-thumb-descr2").stop().animate({
        opacity: '1'
      },t);
    },
    function() {
      $(this).children(".pic-thumb-descr").stop().animate({
        opacity: '0'
      },t);
      $(this).children(".pic-thumb-descr2").stop().animate({
        opacity: '0'
      },t);
    });
  $(".filters-item").click(function() {
    $("#viewing").text($(this).text());
  });

  $(".black-background-specific").click(function() {
      $("#photo-popup-view").css("z-index", -10);
      $("#map-popup-view").css("z-index", -10);
      $("#photo-popup-view").css("visibility", "hidden");
      $("#map-popup-view").css("visibility", "hidden");
  });

	$("#photo-popup-view a.btn-mini").click(function() {
		newtext = $(this).siblings("input[type='text']").val();
		$(".popup-comment-box").append('<div class="popup-comment"><span class="popup-comment-username"><a>amadeus</a>: </span><span class="popup-comment-text">'+newtext+'</span></div>');
	});
});
