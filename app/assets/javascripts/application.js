//= require jquery
//= require jquery_ujs
//= repuire post.js
//= require bootstrap.min
//= require metisMenu.min
//= require morris.min
//= require owl.carousel.min
//= require slider.min
//= require activestorage
//= require turbolinks
//= require_tree .

(function() {
  $(document).on('click', '.toggle-window', function(e) {
    e.preventDefault();
    var panel = $(this).parent().parent();
    var messages_list = panel.find('.messages-list');

    panel.find('.panel-body').toggle();
    panel.attr('class', 'panel panel-default');

    if (panel.find('.panel-body').is(':visible')) {
      var height = messages_list[0].scrollHeight;
      messages_list.scrollTop(height);
    }
  });
})();
