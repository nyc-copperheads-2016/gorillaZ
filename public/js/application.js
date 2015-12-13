$(document).ready(function(){
 $('#link_login').on('click', function(event){
   event.preventDefault();

 $.ajax({
  method: "GET",
  url:'/sessions/new',
  }).done(function(form){
 $('#place_ajaxed_form').append(form);
  }).fail(function(form){
   console.log("This Did Not Work" + form)
  });
 });
});




// $('#link to register').on('click', function(event){
//    event.preventDefault(event)

//    $.ajax({
//     method: "GET"
//     url:



//    })

//  });
// });


