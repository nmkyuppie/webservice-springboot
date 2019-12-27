<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Login - Society Banking</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/styles.css">
	<style type="text/css">
	.errorMessage{
		color: #fff;
	    text-align: center;
	    background: #f26a42;
	    border-radius: 3px;
	    font-size: 13px;
    	padding: 2px;
	}
	</style>
    
  </head>
  <body>
  
        <div class="wrapper fadeInDown">
        
                <div class="jumbotron" style="padding:2rem;">
                <!-- Tabs Titles -->
            
                <!-- Login Form -->
                
                <form action="/user/validate" method="POST">
                <legend style="text-align: center;">Core Banking Solutions</legend><br>
                     <div class="form-group">
                         <label>Username</label>
						  <div class="input-group mb-2 mr-sm-2">
						    <div class="input-group-prepend">
						      <div class="input-group-text"><i class="fa fa-user" aria-hidden="true"></i></div>
						    </div>
						    <input type="text" class="form-control" value="GOVIND" id="userName" name="userName" >
						  </div>
                         
                     </div>
                     <div class="form-group">
                         <label>Password</label>
						  <div class="input-group mb-2 mr-sm-2">
						    <div class="input-group-prepend">
						      <div class="input-group-text"><i class="fa fa-key" aria-hidden="true"></i></div>
						    </div>
						    <input type="password" class="form-control" value="12345" id="password" name="password" >
						  </div>
                     </div>
                     <div class="form-row">
                     	<div class="form-group col">
	                     	<div class="custom-control custom-radio custom-control-inline">
	  							<input type="radio" class="custom-control-input" id="customCheck1" checked="checked" name="domain">
	  							<label class="custom-control-label" for="customCheck1">PACCS</label>
							</div>
						</div>
                     	<div class="form-group col">
	                         <div class="custom-control custom-radio custom-control-inline">
	  							<input type="radio" class="custom-control-input" id="customCheck2" name="domain">
	  							<label class="custom-control-label" for="customCheck2">CCOS</label>
							</div>
						</div>
                     	<div class="form-group col">
	                         <div class="custom-control custom-radio custom-control-inline">
	  							<input type="radio" class="custom-control-input" id="customCheck3" name="domain">
	  							<label class="custom-control-label" for="customCheck3">Urban</label>
							</div>
						</div>
                     	<div class="form-group col">
	                         <div class="custom-control custom-radio custom-control-inline">
	  							<input type="radio" class="custom-control-input" id="customCheck4" name="domain">
	  							<label class="custom-control-label" for="customCheck4">Others</label>
							</div>
						</div>
                     </div>
                     
                     <% if(request.getAttribute("message") != null) { %>
                     <div class="form-group">
                         <div class="errorMessage" id="errorMessage">${message}</div>
                     </div>
                     <%} %>
                     <div class="form-group" align="center">
                         <button type="submit" class="btn btn-primary fadeIn fourth" onclick="">
                         	<i class="fa fa-sign-in" aria-hidden="true"></i> Log In
                         </button>
                     </div>
                </form>
            
                <!-- Remind Password -->
                <div id="formFooter">
                    <a class="underlineHover" href="#">Forgot Password?</a>
                </div>
            
            </div>
        </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/1a055a024c.js"></script>
    
    <script src="static/js/login.js"></script>
  </body>
</html>