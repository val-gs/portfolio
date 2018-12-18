$(function() {
  // ヘッダーの固定
  $(window).scroll(function() {
    if ($(this).scrollTop() > 0) {
      $('#lp_header').addClass('is-fixed');
      $('#head_r').removeClass('hide');
    } else {
      $('#lp_header').removeClass('is-fixed');
      $('#head_r').addClass('hide');
    }
  });

  // ページ内リンク
  $('a[href^=#]').click(function() {
    var id = $(this).attr('href');
    var position = $(id).offset().top -160;

    $('html, body').animate({scrollTop:position}, 500, 'swing');
    return false;
  });
});
