jQuery.fn.submitOnClick = function()
  this.find('input[type=submit]').remove();
  this.find('input[type=submit]').click(function() {
    $(this).parent('form').submit();
  });
  return this;
}

$(function() {
  $('.edit_tweet').submitOnClick();
});
