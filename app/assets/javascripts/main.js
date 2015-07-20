$(document).ready(function() {
  $('#form-partial').on('submit', function(event){
    event.preventDefault();
    $.ajax({
      url: event.target.action,
      method: event.target.method,
      data: $(event.target).serialize()
    }).success(function(response){
      $('#form-partial').html(response);
    }).fail(function(error){
      console.log(error)
    });
  });
});
