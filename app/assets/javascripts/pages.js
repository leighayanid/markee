$(document).ready(function(){
	$('#modal1').modal();
	$('#modalCategory').modal();
	$('#deleteAccount').modal();
	$('select').material_select();
	$('ul.tabs').tabs();
	$('ul.editRegistrationTabs').tabs();
  $(".element").typed({
    strings: ["Save your bookmarks.","And access them anywhere.", "Try it now. It's free!"],
    typeSpeed: 60, 
    backDelay: 750,
    loop: true,
    loopCount: false,
    contentType: 'text',
    callback: function() {}
  });

});