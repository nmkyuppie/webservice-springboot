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
    <link rel="stylesheet" href="static/css/datepicker.css">
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
            <div class="row">
                <div class="col-lg-12">
                     <div class="jumbotron">
                        <form method="POST" action="/saveBranch" modelAttribute="society">
                            <fieldset>
                                <div class="form-row">
	                                <div class="form-group col-sm-4">
	                                    <label>Name of the Institution</label>
	                                    <input type="text" class="form-control" name="institution">
	                                </div>
	                                <div class="form-group col-sm-4">
	                                    <label>Name of the Branch</label>
	                                    <input type="text" class="form-control" name="branch">
	                                </div>
	                                <div class="form-group col-sm-4">
	                                    <label>Name of the PACCS</label>
	                                    <input type="text" class="form-control" name="paccs">
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-4">
	                                    <label>Registration Number</label>
	                                    <input type="text" class="form-control"  name="registrationNumber">
	                                </div>
	                                <div class="form-group col-sm-4">
	                                    <label>Date of Registration</label>
                                		<div id="dordatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<input class="form-control" type="text" readonly name="dateOfRegistration" />
    										<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
										</div>
	                                </div>
	                                <div class="form-group col-sm-4">
	                                    <label>Date of Starting</label>
                                		<div id="dosdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<input class="form-control" type="text" readonly name="dateOfStarting" />
    										<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
										</div>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Circle</label>
	                                    <input type="text" class="form-control" name="circle">
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Region</label>
	                                    <input type="text" class="form-control" name="region">
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Village</label>
	                                    <input type="text" class="form-control" name="village">
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Post</label>
	                                    <input type="text" class="form-control" name="post">
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Taluk</label>
	                                    <input type="text" class="form-control" name="taluk">
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>District</label>
	                                    <input type="text" class="form-control" name="district">
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>PIN Code</label>
	                                    <input type="text" class="form-control" name="pincode">
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Block</label>
	                                    <input type="text" class="form-control" name="block">
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Constitution Assembly</label>
	                                    <input type="text" class="form-control"  name="constitution">
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Parliament</label>
	                                    <input type="text" class="form-control"  name="parliament">
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Nearest Police Station</label>
	                                    <input type="text" class="form-control"  name="policeStation">
	                                </div>
                                    <div class="col-lg-1">
                                        <fieldset class="form-group">
	                                    	<label>Location</label>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                	<input type="radio" class="form-check-input" name="location" id="ruralLocation" value="rural">Rural
                                                </label>
                                            </div>
                                            <div class="form-check">
                                            	<label class="form-check-label">
                                                	<input type="radio" class="form-check-input" name="location" id="urbanLocation" value="urban">Urban
                                                </label>
                                            </div>
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-1">
                                        <fieldset class="form-group">
	                                    	<label>Shares</label>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                	<input class="form-check-input" type="checkbox" value="society" name="shares" >Society
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                	<input class="form-check-input" type="checkbox" value="government" name="shares" >Government
                                                </label>
                                            </div>
                                        </fieldset>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-floppy-o" aria-hidden="true"></i> Save</button>
                                		<button type="reset" class="btn btn-default btn-action float-right" style="margin-right:15px;"><i class="fa fa-eraser" aria-hidden="true"></i> Clear</button>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <footer class="page-footer font-small blue">

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">&#9400; 2019 Copyright:
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
    <script src="static/js/bootstrap-datepicker.js"></script>
  </body>
</html>