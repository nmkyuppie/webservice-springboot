var baseURL = "http://localhost:8080";
//$('#errorMessage').hide();


var validateUser = function(){
	$('#errorMessage').hide();
	var userName = $('#userName').val();
	var password = $('#password').val();
	let headers = new Headers();

    headers.append('Content-Type', 'application/html');
    headers.append('Accept', 'application/html');
	$.ajax({
		type : "GET",
		contentType : "application/html",
		url : "/validateUser?userName="+userName+"&password="+password,
		timeout : 100000,
		headers : headers,
		success : function(data) {
			document.body.innerHTML="";
			document.write(data);
		},
		error : function(err) {
			
		}

	});
}