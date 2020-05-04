<%@page import="com.cas.business.entity.UserDetails"%>
<head>
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/1a055a024c.js"></script>
<script src="../static/js/main.js"></script>
<script src="../static/js/bootstrap-datepicker.js"></script>
<style>
  body {
    font-family: 'Montserrat', serif;
  }
</style>
</head>
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow">
    <a class="navbar-brand col-md-2 d-none d-md-block " href="/home">Core Banking Solutions</a>
	<div class="collapse navbar-collapse" id="navbarColor03">
		<ul class="navbar-nav mr-auto">
         <li class="nav-item" style="margin-right: 15px;">
             <a class="nav-link underlineHover" href="/home"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
         </li>
         <li class="nav-item" style="margin-right: 15px;">
             <a class="nav-link underlineHover" href="/society/list#active"><i class="fa fa-university" aria-hidden="true"></i> Society</a>
         </li>
         <li class="nav-item" style="margin-right: 15px;">
             <a class="nav-link underlineHover" href="/jewelloan/list#active"><i class="fa fa-money" aria-hidden="true"></i> Jewel Loan</a>
         </li>
         </ul> 
	</div>
	<% 
	UserDetails userDetails = (UserDetails)session.getAttribute("userDetails");
	String userName = userDetails.getUserName();
	%>
	<a class="navbar-brand-username" href="#" style="font-size:14px;"><i class="fa fa-user" aria-hidden="true"></i> <%=userName %></a>
	
	<form action="/destroy" method="post">
		<button type="submit" class="btn btn-warning float-right"  style="margin-right: 15px;">
			<i class="fa fa-sign-out" aria-hidden="true"></i>
		</button>
	</form>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
</nav>