<%@page import="com.cas.business.entity.Circle"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/styles.css">

    <title>Home - Society Banking</title>
  </head>
  <body>
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
            <a class="navbar-brand" href="#" style="font-size:14px;"><i class="fa fa-user" aria-hidden="true"></i> ${userName}</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </nav>
        <div class="container-fluid">
            <div class="row justify-content-end" style="margin-top: -15px;">
            	<div class="col offset-md-6">
            		<form action="/branch/add" method="GET">
            			<input type="submit" class="btn btn-primary float-right" value="Add Branch">
            		</form>
            	</div>
            </div>
            
            <div class="row">
                <div class="col-lg-3">
                    <ul class="list-group shadow">
                    	<%
                    	List<Circle> circleList = (List<Circle>)request.getAttribute("circleList");
                    	for(Circle circle : circleList){
                    	%>
                        	<li class="list-group-item d-flex justify-content-between align-items-center">
                    		<%=circle.getCircleName() %>
                            <span class="badge badge-primary badge-pill">12</span>
                    	<% } %>
                    </ul>
                </div>
                <div class="col-lg-3">
                    
                    <ul class="list-group shadow">
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            A.K.Mottur
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Kasinayakampatti
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Gummidigampatti
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Jolarpettai R.F.
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            	Kakangarai
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                                Kandili
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            A.K.Katheri
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                                Koratti
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center active">
                                Kothur
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                                Kurumberi
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                                Molagarampatti
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                                Mookanur
                        </li>
                    </ul>
                </div>
                <div class="col-lg-6">
                     <div class="jumbotron shadow" style=" padding-top: 5px; ">
                        <form>
                            <fieldset>
                                <legend>Society Details</legend>
                                <div class="form-group">
                                    <label>Name of the Institution</label>
                                    <input type="text" class="form-control" value="Society Bank">
                                </div>
                                <div class="form-group">
                                    <label>Name of the PACCS</label>
                                    <input type="text" class="form-control" value="Society Bank 2">
                                </div>
                                <div class="form-group">
                                    <label>Registration number</label>
                                    <input type="text" class="form-control"  value="#22323">
                                </div>
                                <div class="form-group">
                                    <label>Village Name</label>
                                    <input type="text" class="form-control" value="Kothur">
                                </div>
                                <div class="form-group">
                                    <label>District</label>
                                    <input type="text" class="form-control" value="Tiruppatur">
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <fieldset class="form-group">
                                            <legend>Location</legend>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                                                Rural
                                                </label>
                                            </div>
                                            <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="option2">Urban
                                                </label>
                                            </div>
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-6">
                                        <fieldset class="form-group">
                                            <legend>Shares</legend>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" value="" checked="">
                                                Society
                                                </label>
                                            </div>
                                            <div class="form-check disabled">
                                                <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" value="">
                                                Government
                                                </label>
                                            </div>
                                        </fieldset>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Update</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <footer class="page-footer font-small blue">

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">© 2019 Copyright:
          <a href="#"> Society Bank</a>
        </div>
        <!-- Copyright -->
      
      </footer>
      <!-- Footer -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/1a055a024c.js"></script>
    <script src="static/js/main.js"></script>
  </body>
</html>