$.fn.clickToggle = function (a, b) {
  return this.each(function () {
    var clicked = false;
    $(this).on('click', function () {
      clicked = !clicked;
      if (clicked) {
        return a.apply(this, arguments);
      }
      return b.apply(this, arguments);
    });
  });
};

$(document).ready(function(){
  $('ul li.nav_btn i').clickToggle(function(){
    $(this).css({'transition': '0.5s', 'transform': 'rotate(180deg)'});
    $(this).removeClass('fa-bars');
    $(this).addClass('fa-times');
    $('ul li.nav_link').addClass('is_active animate__animated animate__fadeInRight');
    // $('.UserShowPage_UserImage').css('display', 'none');
  },function(){
    $(this).css({'transition': '', 'transform': ''});
    $(this).removeClass('fa-times');
    $(this).addClass('fa-bars');
    $('ul li.nav_link').removeClass('is_active animate__animated animate__fadeInRight');
  });
});