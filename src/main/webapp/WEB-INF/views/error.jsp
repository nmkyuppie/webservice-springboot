<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Error</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/styles.css">
	<style type="text/css">
	.errorMessage{
		color: #fff;
	    background: var(--danger);
	    width: fit-content;
	    display: inline-block;
	    padding: 5px;
	    border-radius: 4px;
	    margin-bottom: 10px;
	}
	</style>
    
  </head>
  <body>
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <!-- Tabs Titles -->
            
                <!-- Icon -->
                <div class="fadeIn first">
                    <i class="fa fa-user" aria-hidden="true" style="font-size: 5rem;"></i>
                </div>
            
                <!-- Login Form -->
                <form>
                    <input type="text" id="userName" class="fadeIn second" name="login" placeholder="Username">
                    <input type="text" id="password" class="fadeIn third" name="login" placeholder="Password">
                    <input type="button" class="fadeIn fourth" value="Log In" onclick="validateUser()" style="margin-bottom:20px;">
                    <br>
                    <div class="errorMessage" id="errorMessage"></div>
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