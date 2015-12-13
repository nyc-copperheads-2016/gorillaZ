$(document).ready(function(){
 $('#link-user-login').on('click', function(event){
   event.preventDefault();
 $.ajax({
  method: "GET",
  url:'/sessions/new',
  }).done(function(form){

 $('#main-content').html(form);
  }).fail(function(form){
   console.log("This Did Not Work" + form)
  });
});




 $('#link-user-register').on('click', function(event){
   event.preventDefault();

 $.ajax({
 method: "GET",
 url:'/users/new',
}).done(function(form){
 $('#main-content').html(form);
}).fail(function(form){
  console.log("Not Working!!!" + form)
   });
 });
});






