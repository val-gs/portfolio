$(function() {
  //ヘッダーロゴ
  $('.logo').hover(
    function() {
      $(this).animate({'opacity': '0.8'}, 200);
    },
    function() {
      $(this).animate({'opacity': '1'}, 200);
    }
  )

  /* ページ内リンク */
  $('a[href^=#]').click(function() {
    var id = $(this).attr('href');
    var position = $(id).offset().top;

    $('html, body').animate({scrollTop:position}, 500, 'swing');
    return false;
  });
});
