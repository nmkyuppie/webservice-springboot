$(function() {
    $('a[href*=#]:not([href=#])').click(function() {
        if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
            if (target.length) {
            $('html,body').animate({
                scrollTop: target.offset().top
            }, 1000);
            return false;
            }
        }
    });
});

$(document).ready(function () {
    $(".jumbotron-table").css("height", window.innerHeight-180+"px");
    $('label.tree-toggler').click(function () {
        $(this).parent().children('ul.tree').toggle(300);
    });
});

$(function () {
	  $("#dordatepicker").datepicker({ 
	        autoclose: true, 
	        todayHighlight: true
	  }).datepicker('update', new Date());
	  $("#dosdatepicker").datepicker({ 
	        autoclose: true, 
	        todayHighlight: true
	  }).datepicker('update', new Date());
	});