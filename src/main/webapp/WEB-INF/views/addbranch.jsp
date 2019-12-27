<%@page import="com.cas.business.entity.Circle"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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

    <title>Branch - Society Banking</title>
  </head>
 <body>
        <%@ include file = "header.jsp" %>
        <div class="container-fluid">
            <div class="row justify-content-start" style="margin: 15px -15px;">
            	<div class="col-2">
            		<form action="/branch/list" method="GET">
            			<button type="submit" class="btn btn-default"><i class="fa fa-chevron-left" aria-hidden="true"></i> Branch</button>
            		</form>
            	</div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                     <div class="jumbotron">
                        <form:form method="POST" action="/branch/add" modelAttribute="society">
                            <fieldset>
                            	<form:hidden class="form-control" name="branchId" path="branchId" value="" />
                                <div class="form-row">
	                                <div class="form-group col-sm-4">
	                                    <label>Name of the Institution</label>
	                                    <form:input type="text" class="form-control" name="instituition" path="instituition" value="" />
	                                </div>
	                                <div class="form-group col-sm-4">
	                                    <label>Name of the Branch</label>
	                                    <form:input type="text" class="form-control" name="branch" path="branch" />
	                                </div>
	                                <div class="form-group col-sm-4">
	                                    <label>Name of the PACCS</label>
	                                    <form:input type="text" class="form-control" name="paccs" path="paccs"/>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-4">
	                                    <label>Registration Number</label>
	                                    <form:input type="text" class="form-control"  name="registrationNumber" path="registrationNumber"/>
	                                </div>
	                                <div class="form-group col-sm-4">
	                                    <label>Date of Registration</label>
                                		<div id="dordatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="dateOfRegistration"  path="dateOfRegistration"/>
    										<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
										</div>
	                                </div>
	                                <div class="form-group col-sm-4">
	                                    <label>Date of Starting</label>
                                		<div id="dosdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="dateOfStarting"  path="dateOfStarting"/>
    										<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
										</div>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Circle</label>
	                                    <form:input type="text" class="form-control" name="circle" path="circle"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Region</label>
	                                    <form:input type="text" class="form-control" name="region" path="region"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Village</label>
	                                    <form:input type="text" class="form-control" name="village" path="village"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Post</label>
	                                    <form:input type="text" class="form-control" name="post" path="post"/>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Taluk</label>
	                                    <form:input type="text" class="form-control" name="taluk" path="taluk"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>District</label>
	                                    <form:input type="text" class="form-control" name="district" path="district" />
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>PIN Code</label>
	                                    <form:input type="text" class="form-control" name="pinCode" path="pinCode"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Block</label>
	                                    <form:input type="text" class="form-control" name="block" path="block"/>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Constitution Assembly</label>
	                                    <form:input type="text" class="form-control"  name="constituition" path="constituition"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Parliament</label>
	                                    <form:input type="text" class="form-control"  name="parliament" path="parliament"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Nearest Police Station</label>
	                                    <form:input type="text" class="form-control"  name="policeStation"  path="policeStation"/>
	                                </div>
                                    <div class="col-lg-1">
                                        <fieldset class="form-group">
	                                    	<label>Location</label>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                	<form:radiobutton class="form-check-input" name="location" path="location" id="ruralLocation" value="rural" />Rural
                                                </label>
                                            </div>
                                            <div class="form-check">
                                            	<label class="form-check-label">
                                                	<form:radiobutton class="form-check-input" name="location" path="location" id="urbanLocation" value="urban" />Urban
                                                </label>
                                            </div>
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-1">
                                        <fieldset class="form-group">
	                                    	<label>Shares</label>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                	<form:radiobutton class="form-check-input" value="society" name="shares" path="shares" />Society
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                	<form:radiobutton class="form-check-input" value="government" name="shares" path="shares" />Government
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
                        </form:form>
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
    <script src="../static/js/main.js"></script>
    <script src="../static/js/bootstrap-datepicker.js"></script>
  </body>
</html>