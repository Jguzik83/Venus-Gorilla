$(document).ready(function() {
  $('#bubble').on('submit', 'form#form-partial', function(event){
    event.preventDefault();
    $.ajax({
      url: event.target.action,
      method: event.target.method,
      data: $(event.target).serialize()
    }).success(function(response){
      $('#bubble').html(response);
    }).fail(function(error){
      console.log(error)
    });
  });
});
