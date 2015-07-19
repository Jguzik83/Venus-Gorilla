$( document ).ready(function() {
  $('#question_form').on('submit', function(event){
    event.preventDefault();
    $.ajax({
      url: event.target.action,
      method: event.target.method,
      data: $(event.target).serialize(),
    }).done(function(response){
      console.log(response)
    }).fail(function(error){
      console.log(error);
    });
  });
});
