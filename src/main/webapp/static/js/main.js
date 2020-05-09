
var headerHeight = 110;

$(document).ready(function () {
    $('label.tree-toggler').click(function () {
        $(this).parent().children('ul.tree').toggle(300);
    });
    $(".jumbotron-table").css("height", window.innerHeight-headerHeight - 10+"px");
    $(".basicDetailsTable").css("height", window.innerHeight-headerHeight - 50 +"px");
    $("#districtList").css("height", window.innerHeight - headerHeight - 10 +"px");
    $("#blockList").css("height", window.innerHeight - headerHeight - 10 +"px");
    $("#circleList").css("height", window.innerHeight - headerHeight - 10 +"px");
    $("#societyList").css("height", window.innerHeight - headerHeight - 10 +"px");
    $("#sideNavigation").css("height", window.innerHeight - headerHeight + 29 +"px");
    $(".mainContent").css("height", window.innerHeight - headerHeight + 28 +"px");
    $( window ).resize(function() {
    	$(".jumbotron-table").css("height", window.innerHeight-headerHeight - 10+"px");
    	$(".basicDetailsTable").css("height", window.innerHeight-headerHeight - 50 +"px");
        $("#districtList").css("height", window.innerHeight - headerHeight - 10 +"px");
        $("#blockList").css("height", window.innerHeight - headerHeight - 10 +"px");
        $("#circleList").css("height", window.innerHeight - headerHeight - 10 +"px");
        $("#societyList").css("height", window.innerHeight - headerHeight - 10 +"px");
        $("#sideNavigation").css("height", window.innerHeight - headerHeight + 29 +"px");
        $(".mainContent").css("height", window.innerHeight - headerHeight + 28 +"px");
    });
});

var numberOnly = function (obj, length) {
	$(obj).removeClass("is-invalid");
	$(obj).removeClass("is-valid");
	var value = $(obj).val().trim();
	if(isNaN(value) || value === ''){
		$(obj).addClass("is-invalid");
		$(obj).val('');
	}
	else{
		if(length === undefined || value.length == length)
			$(obj).addClass("is-valid");
	}
}

var addAreaCoverage = function() {
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
}

var removeArea = function(obj) {
	var areaCoverageText = $(obj).attr("data");
	$("#areaCoverage[value='"+areaCoverageText+"']").remove();
	$("i[data='"+areaCoverageText+"']").closest('span').remove();
}

var removeDocument = function(obj){
	var documentId = $(obj).attr("data");
	
	$.ajax({
		type : "GET",
		contentType : "application/json",
		url : "/document/delete?id="+documentId,
		success : function(data) {
			$("i[data='"+documentId+"']").closest('span').remove();
//			petitionForm.submit();
		},
		error : function(err) {
//			petitionForm.submit();
		}

	});
	
}
	
$(function () {
	  $("#dordatepicker").datepicker({ 
	        autoclose: true, 
	        todayHighlight: true
	  }).datepicker();		//'update', new Date()
	  $("#dosdatepicker").datepicker({ 
	        autoclose: true, 
	        todayHighlight: true
	  }).datepicker();
	  $(".date").datepicker({ 
	        autoclose: true, 
	        todayHighlight: true
	  }).datepicker();
});

/*$(function() {
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
});*/