$(function() {
  $(function(){
    $('td').mouseover(function(){
      $(this).css("filter", "opacity(30%)");
    }).mouseout(function(){
      $(this).css("filter", "none");
    });
  });
});
