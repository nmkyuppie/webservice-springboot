<%@page import="com.cas.business.entity.UserDetails"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow">
    <a class="navbar-brand" href="#">Core Banking Solutions</a>
	<div class="collapse navbar-collapse" id="navbarColor03">
		<!-- <ul class="navbar-nav mr-auto">
         <li class="nav-item">
             <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
         </li>
         <li class="nav-item active">
             <a class="nav-link" href="#">Branches</a>
         </li>
         </ul> -->
	</div>
	<% 
	UserDetails userDetails = (UserDetails)session.getAttribute("userDetails");
	String userName = userDetails.getUserName();
	%>
	<a class="navbar-brand" href="#" style="font-size:14px;"><i class="fa fa-user" aria-hidden="true"></i> <%=userName %></a>
	
	<form action="/destroy" method="post">
		<button type="submit" class="btn btn-default float-right">
			<i class="fa fa-sign-out" aria-hidden="true"></i> Log Out
		</button>
	</form>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
</nav>