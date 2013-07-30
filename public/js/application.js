$(document).ready(function(){
  $('.container').on('click', 'a', function(e){
    e.preventDefault();    
    $.ajax({
      url:'/color',
      type:'post',
      success: function(data) { 
        $("#color_me li").eq(data.number).css("background-color", data.color)
      }
    })
  })
});
