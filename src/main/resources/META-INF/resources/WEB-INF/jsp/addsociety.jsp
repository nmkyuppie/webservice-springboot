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
        <div class="container-fluid">
            <div class="row justify-content-start" style="margin: 15px -15px;">
            	<div class="col-2">
            		<form action="/society/list#active" method="GET">
            			<button type="submit" class="btn btn-default"><i class="fa fa-chevron-left" aria-hidden="true"></i> Society</button>
            		</form>
            	</div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                     <div class="jumbotron">
                        <form:form method="POST" action="/society/add#active" modelAttribute="society">
                            <fieldset>
                            	<form:hidden class="form-control" name="id" path="id" value="" />
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Institution Name</label>
	                                    <form:select class="form-control" name="instituition" path="instituition" >
	                                    	<form:option value="paccs">Paccs</form:option>
	                                    	<form:option value="lamp">Lamp</form:option>
	                                    	<form:option value="cms">CMS</form:option>
	                                    	<form:option value="ldBank">Ld Bank</form:option>
	                                    	<form:option value="urbanBank">Urban Bank</form:option>
	                                    	<form:option value="empSociety">Emp Society</form:option>
	                                    	<form:option value="stores">Stores</form:option>
	                                    </form:select>  
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Society Name</label>
	                                    <form:input type="text" class="form-control" name="name" path="name" />
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Registration Number</label>
	                                    <form:input type="text" class="form-control"  name="registrationNumber" path="registrationNumber"/>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Registration Date</label>
                                		<div id="dordatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="registrationDate"  path="registrationDate"/>
    										<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
										</div>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Starting Date</label>
                                		<div id="dosdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="startingDate"  path="startingDate"/>
    										<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
										</div>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>District</label>
	                                    <form:select class="form-control" name="district" path="district" >
	                                    	<form:options items="${districtList}" itemValue="id" itemLabel="name"/>
	                                    </form:select>  
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Circle</label>
	                                    <form:select class="form-control" name="circle" path="circle" >
	                                    	<form:options items="${circleList}" itemValue="id" itemLabel="name"/>
	                                    </form:select>  
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Block</label>
	                                    <form:select class="form-control" name="block" path="block" >
	                                    	<form:options items="${blockList}" itemValue="id" itemLabel="name"/>
	                                    </form:select>  
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Region</label>
	                                    <form:input type="text" class="form-control" name="region" path="region"/>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Taluk</label>
	                                    <form:input type="text" class="form-control" name="taluk" path="taluk"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Village</label>
	                                    <form:input type="text" class="form-control" name="village" path="village"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Post</label>
	                                    <form:input type="text" class="form-control" name="post" path="post"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>PIN Code</label>
	                                    <form:input type="text" class="form-control" name="pinCode" path="pinCode"/>
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
	                                    	<label>Building</label>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                	<form:radiobutton class="form-check-input" value="own" name="building" path="building" />Own
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                	<form:radiobutton class="form-check-input" value="rent" name="building" path="building" />Rent
                                                </label>
                                            </div>
                                        </fieldset>
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
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Area Sq. Ft.</label>
	                                    <form:input type="text" class="form-control" name="areaSqFt" path="areaSqFt"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Chitta Number</label>
	                                    <form:input type="text" class="form-control" name="chittaNumber" path="chittaNumber"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Patta Number</label>
	                                    <form:input type="text" class="form-control" name="pattaNumber" path="pattaNumber"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>PAN</label>
	                                    <form:input type="text" class="form-control" name="pan" path="pan"/>
	                                </div>
                                </div>
								<div class="form-row">
									<div class="form-group col-sm-3">
										<label>TIN Number</label>
										<form:input type="text" class="form-control" name="tinNumber"
											path="tinNumber" />
									</div>
									<div class="form-group col-sm-3">
										<label>Survey Number</label>
										<form:input type="text" class="form-control" name="surveyNumber" path="surveyNumber" />
									</div>
									<div class="form-group col-sm-2">
										<label>Society Class</label>
										<form:select class="form-control" name="societyClass" path="societyClass">
											<form:option value="A Class" selected="selected">A Class</form:option>
											<form:option value="B Class">B Class</form:option>
											<form:option value="SC">SC</form:option>
											<form:option value="ST">ST</form:option>
											<form:option value="Women">Women</form:option>
											<form:option value="Physically Challenged">Physically Challenged</form:option>
											<form:option value="Widow">Widow</form:option>
										</form:select>
									</div>
									<div class="form-group col-sm-2">
										<label>Class Year </label>
										<form:input type="text" class="form-control" name="classYearStart" path="classYearStart" placeholder="XXXX - Year Start" pattern="[0-9]{4}" maxlength="4" onkeyup="numberOnly(this, 4)" required="required" />
									</div>
									<div class="form-group col-sm-2">
										<label>&nbsp; </label>
										<form:input type="text" class="form-control" name="classYearEnd" path="classYearEnd" placeholder="XXXX - Year End" pattern="[0-9]{4}" maxlength="4" onkeyup="numberOnly(this, 4)" required="required" />
									</div>
								</div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Marketing Business</label>
	                                    <form:select class="form-control" name="marketingBusiness" path="marketingBusiness" >
	                                    	<form:option value="cotton">Cotton</form:option>
	                                    	<form:option value="banana">Banana</form:option>
	                                    	<form:option value="flower">Flower</form:option>
	                                    	<form:option value="other">Other</form:option>
	                                    </form:select>  
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Area Coverage</label>
	                                    <input type="text" class="form-control" id="areaCoverageText"/>
	                                </div>
	                                <div class="form-group col-sm-1">
	                                    <br>
	                                    <button onclick="addAreaCoverage()" type="button" class="btn btn-primary btn-action" id="areaCoverageButton" style="margin-top: 4px; height: 39px; width: 100%;"><i class="fa fa-plus" aria-hidden="true"></i> </button>
	                                </div>
	                                <div class="form-group col-sm-6">
	                                <br/>
	                                    <div id="areaHolder">
											<c:forEach var="areaName" items="${areaCoverage}">
												<span class='badge badge-light' style='margin:5px 15px;'>${areaName}
													&nbsp;&nbsp;<i data='${areaName}' class='fa fa-times-circle badgeAction' title='Remove it!' onclick="removeArea(this)"></i>
												</span>
											</c:forEach>
	                                    </div>
	                                </div>
                                </div>
								<div class="row">
	                                <div class="form-group col-lg-6">
	                                    <form:checkbox path="hasBranch"/> 
	                                    <label>Has Branch?</label>
	                                </div>
                                    <div class="col-lg-6">
                                		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-floppy-o" aria-hidden="true"></i> Save Society</button>
                                		<button type="reset" class="btn btn-default btn-action float-right" style="margin-right:15px;"><i class="fa fa-eraser" aria-hidden="true"></i> Clear</button>
										<span class="badge badge-success  float-right">${message }</span>
                                    </div>
                                </div>
                            </fieldset>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
       <!--  <footer class="page-footer font-small blue">

        Copyright
        <div class="footer-copyright text-center py-3">&#9400; 2019 Copyright:
          <a href="#"> Society Bank</a>
        </div>
        Copyright
      
      </footer> -->
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