//= require jquery
//= require jquery_ujs
//= require bootstrap-datepicker
//= require bootstrap-timepicker
//= require bloodhound
//= require typeahead.jquery
//= require imagesloaded
//= require masonry.pkgd

$(function() {
  $('#communities').imagesLoaded(function() {
    $('#communities').masonry({
      itemSelector: '.community',
      columnWidth: 300
    });
  });
});
