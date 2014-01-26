$(function () {
  $('#post_tag_tokens').tokenInput($('#post_tag_tokens').data('url'), { 
    crossDomain: false, 
    propertyToSearch: 'email', 
    prePopulate: $('#post_tag_tokens').data('pre'),
    theme: 'facebook',
    preventDuplicates: true
  });
});