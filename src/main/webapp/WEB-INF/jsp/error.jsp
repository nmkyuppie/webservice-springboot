<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Page not found</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../static/css/bootstrap.css">
    <link rel="stylesheet" href="../static/css/styles.css">
    
  </head>
  <body>
        <div class="wrapper fadeInDown">
            <div class="jumbotron" style="padding:2rem;">
                <!-- Tabs Titles -->
                <legend style="text-align: center;">Core Banking Solutions</legend><br>
            
                <!-- Icon -->
                <div class="fadeIn first" align="center">
                    <i class="fa fa-exclamation-triangle" aria-hidden="true" style="font-size: 5rem;"></i>
                </div>
                <label>You are not logged in to view this page.</label>
            	 
                <!-- Login Form -->
                <form method="get" action="/login" align="center">
                    <button type="submit" class="btn btn-primary fadeIn fourth" onclick="">
                         	<i class="fa fa-sign-in" aria-hidden="true"></i> Log In
                     </button>
                </form>
            
            </div>
        </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/1a055a024c.js"></script>
    
    <script src="../static/js/login.js"></script>
  </body>
</html>