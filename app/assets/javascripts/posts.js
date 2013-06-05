$(function () {
  $('#post_tag_tokens').tokenInput('/users.json', { 
    crossDomain: false, 
    propertyToSearch: 'email', 
    prePopulate: $('#post_tag_tokens').data('pre'),
    theme: 'facebook',
    preventDuplicates: true
  });
});