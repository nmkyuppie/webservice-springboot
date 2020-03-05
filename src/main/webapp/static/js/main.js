
var headerHeight = 110;

$(document).ready(function () {
    $('label.tree-toggler').click(function () {
        $(this).parent().children('ul.tree').toggle(300);
    });
    $(".jumbotron-table").css("height", window.innerHeight-headerHeight - 10+"px");
    $("#districtList").css("height", window.innerHeight - headerHeight - 10 +"px");
    $("#blockList").css("height", window.innerHeight - headerHeight - 10 +"px");
    $("#sideNavigation").css("height", window.innerHeight - headerHeight + 29 +"px");
    $( window ).resize(function() {
    	$(".jumbotron-table").css("height", window.innerHeight-headerHeight - 10+"px");
        $("#districtList").css("height", window.innerHeight - headerHeight - 10 +"px");
        $("#blockList").css("height", window.innerHeight - headerHeight - 10 +"px");
        $("#sideNavigation").css("height", window.innerHeight - headerHeight + 29 +"px");
    });
});

$("#districtList li" ).on( "click", function() {
	$('#districtList li.active').removeClass('active');
	$(this).addClass("active");
});

$("#areaCoverageButton" ).on( "click", function() {
	var areaCoverageText = $('#areaCoverageText').val();
	if(areaCoverageText.trim() === ""){
		$("#areaCoverageText").addClass("is-invalid");
	}
	else{
		$("#areaHolder").append("<span class='badge badge-light' style='margin:5px 15px;'>"+
				areaCoverageText +
				"&nbsp;&nbsp;<i data='"+areaCoverageText+"' class='fa fa-times-circle badgeAction' title='Remove it!' onclick=removeArea(this)></i></span>");
		$('<input>').attr({
			type: 'hidden',
		    value: areaCoverageText,
		    id: 'areaCoverage',
		    name: 'areaCoverage'
		}).appendTo('form');
	}
	$('#areaCoverageText').val('');
	$('#areaCoverageText').focus();
});

var removeArea = function(obj) {
	var areaCoverageText = $(obj).attr("data");
	$("#areaCoverage[value='"+areaCoverageText+"']").remove();
	$("i[data='"+areaCoverageText+"']").closest('span').remove();
}
	
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