<%@page import="com.cas.business.entity.Circle"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../static/css/bootstrap.css">
    <link rel="stylesheet" href="../static/css/datepicker.css">
    <link rel="stylesheet" href="../static/css/styles.css">

    <title>Society - Core Banking Solution</title>
  </head>
 <body>
        <%@ include file = "header.jsp" %>
		<div class="container-fluid" style="margin-top:40px;">
            <div class="row justify-content-end" style="margin: 0 -15px;">
            	<div class="col-md-6" style="padding:0">
            		<span class="bigBadge badge">C2498 Palnangkuppam</span>
            	</div>
            </div>
			<div class="row" >
				<nav id="sideNavigation" class="col-md-2 d-none d-md-block sidebar shadow" style="padding:0; overflow:auto">
					<div>
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky" href="#">
									<i class="fa fa-bank" aria-hidden="true"></i>&nbsp;
									Soceity Details
								</a>
							</li>
						</ul>
					</div>
					<div>
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky active" href="#">
									<i class="fa fa-braille" aria-hidden="true"></i>&nbsp;
									Members
								</a>
							</li>
						</ul>
					</div>
					<div>
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky" href="#">
									<i class="fa fa-database" aria-hidden="true"></i>&nbsp;
									Shares
								</a>
							</li>
						</ul>
					</div>
					<div>
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky" href="#">
									<i class="fa fa-users" aria-hidden="true"></i>&nbsp;
									Society Employee Details
								</a>
							</li>
						</ul>
					</div>
					<div>
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky" href="#">
									<i class="fa fa-address-card" aria-hidden="true"></i>&nbsp;
									PDS Employee Details
								</a>
							</li>
						</ul>
					</div>
					<div>
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky" href="#">
									<i class="fa fa-suitcase" aria-hidden="true"></i>&nbsp;
									Retirement Details
								</a>
							</li>
						</ul>
					</div>
					<div>
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky" href="#">
									<i class="fa fa-balance-scale" aria-hidden="true"></i>&nbsp;
									Audit Details
								</a>
							</li>
						</ul>
					</div>
					<div>
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky" href="#">
									<i class="fa fa-handshake-o" aria-hidden="true"></i>&nbsp;
									Board Details
								</a>
							</li>
						</ul>
					</div>
					<div>
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky" href="#">
									<i class="fa fa-support" aria-hidden="true"></i>&nbsp;
									Deputation Details
								</a>
							</li>
						</ul>
					</div>
					<div>
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky" href="#">
									<i class="fa fa-commenting" aria-hidden="true"></i>&nbsp;
									Petition Details
								</a>
							</li>
						</ul>
					</div>
					<div>
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky" href="#">
									<i class="fa fa-inr" aria-hidden="true"></i>&nbsp;
									Bonus Details
								</a>
							</li>
						</ul>
					</div>
					<div>
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky" href="#">
									<i class="fa fa-gift" aria-hidden="true"></i>&nbsp;
									Promotion Details
								</a>
							</li>
						</ul>
					</div>
				</nav>
				<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4 shadow" style="background:#004D40;">
				</main>
			</div>
		</div>
</body>
</html>