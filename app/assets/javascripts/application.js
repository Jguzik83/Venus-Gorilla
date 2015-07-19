//= require jquery
//= require bootstrap-sprockets

$(document).ready(function(event){
  var width = $(document).width();
  function goRight(){
    $('#pic').animate({
      left: width
    }, 9000, function(){
      setTimeout(goLeft, 50);
    });
  }
  function goLeft(){
    $('#pic').animate({
      left: 0
    }, 9000, function(){
      setTimeout(goRight, 50);
    });
    }
    setTimeout(goRight, 50);
  });