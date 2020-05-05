<%@page import="com.cas.business.entity.Circle"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

        <div class="container-fluid" style="margin-top:0px;">
            <div class="row">
                <div class="col-lg-12">
                     <div class="">
                        <form:form method="${method }" action="${action }" modelAttribute="societyInfo">
                            <fieldset>
                            	<form:hidden class="form-control" name="id" path="id" value="" />
                            	
                                <div class="form-row"  style="margin: 15px -15px;">
                                    <div class="col offset-md-6">
                                		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="${buttonIcon }" aria-hidden="true"></i> ${buttonText } Society</button>
										<span class="badge badge-success  float-right">${message }</span>
                                    </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Institution Name</label>
	                                    <form:select class="form-control" name="instituition" path="instituition"  disabled="${disabled}">
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
	                                    <form:input type="text" class="form-control" name="name" path="name"  disabled="${disabled}"/>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Registration Number</label>
	                                    <form:input type="text" class="form-control"  name="registrationNumber" path="registrationNumber" disabled="${disabled}"/>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Registration Date</label>
                                		<div id="dordatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="registrationDate"  path="registrationDate" disabled="${disabled}"/>
    										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
										</div>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Starting Date</label>
                                		<div id="dosdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="startingDate"  path="startingDate" disabled="${disabled}"/>
    										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
										</div>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>District</label>
	                                    <form:select class="form-control" name="district" path="district"  disabled="${disabled}">
	                                    	<form:options items="${districtList}" itemValue="id" itemLabel="name"/>
	                                    </form:select>  
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Circle</label>
	                                    <form:select class="form-control" name="circle" path="circle"  disabled="${disabled}">
	                                    	<form:options items="${circleList}" itemValue="id" itemLabel="name"/>
	                                    </form:select>  
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Block</label>
	                                    <form:select class="form-control" name="block" path="block"  disabled="${disabled}">
	                                    	<form:options items="${blockList}" itemValue="id" itemLabel="name"/>
	                                    </form:select>  
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Region</label>
	                                    <form:input type="text" class="form-control" name="region" path="region" disabled="${disabled}"/>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Taluk</label>
	                                    <form:input type="text" class="form-control" name="taluk" path="taluk" disabled="${disabled}"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Village</label>
	                                    <form:input type="text" class="form-control" name="village" path="village" disabled="${disabled}"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Post</label>
	                                    <form:input type="text" class="form-control" name="post" path="post" disabled="${disabled}"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>PIN Code</label>
	                                    <form:input type="text" class="form-control" name="pinCode" path="pinCode" disabled="${disabled}"/>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Constitution Assembly</label>
	                                    <form:input type="text" class="form-control"  name="constituition" path="constituition" disabled="${disabled}"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Parliament</label>
	                                    <form:input type="text" class="form-control"  name="parliament" path="parliament" disabled="${disabled}"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Nearest Police Station</label>
	                                    <form:input type="text" class="form-control"  name="policeStation"  path="policeStation" disabled="${disabled}"/>
	                                </div>
                                    <div class="form-group col-sm-3">
	                                    <label>Marketing Business</label>
	                                    <form:select class="form-control" name="marketingBusiness" path="marketingBusiness"  disabled="${disabled}">
	                                    	<form:option value="cotton">Cotton</form:option>
	                                    	<form:option value="banana">Banana</form:option>
	                                    	<form:option value="flower">Flower</form:option>
	                                    	<form:option value="other">Other</form:option>
	                                    </form:select>  
	                                </div>
                                    <%-- <div class="col-lg-1">
                                        <fieldset class="form-group">
	                                    	<label>Shares</label>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                	<form:radiobutton class="form-check-input" value="society" name="shares" path="shares"  disabled="${disabled}"/>Society
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                	<form:radiobutton class="form-check-input" value="government" name="shares" path="shares"  disabled="${disabled}"/>Government
                                                </label>
                                            </div>
                                        </fieldset>
                                    </div> --%>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Area Sq. Ft.</label>
	                                    <form:input type="text" class="form-control" name="areaSqFt" path="areaSqFt" disabled="${disabled}"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Chitta Number</label>
	                                    <form:input type="text" class="form-control" name="chittaNumber" path="chittaNumber" disabled="${disabled}"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Patta Number</label>
	                                    <form:input type="text" class="form-control" name="pattaNumber" path="pattaNumber" disabled="${disabled}"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>PAN</label>
	                                    <form:input type="text" class="form-control" name="pan" path="pan" disabled="${disabled}"/>
	                                </div>
                                </div>
                                <div class="form-row">
                                	<div class="col-lg-1">
                                        <fieldset class="form-group">
	                                    	<label>Building</label>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                	<form:radiobutton class="form-check-input" value="own" name="building" path="building"  disabled="${disabled}"/>Own
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                	<form:radiobutton class="form-check-input" value="rent" name="building" path="building"  disabled="${disabled}"/>Rent
                                                </label>
                                            </div>
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-1">
                                        <fieldset class="form-group">
	                                    	<label>Location</label>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                	<form:radiobutton class="form-check-input" name="location" path="location" id="ruralLocation" value="rural"  disabled="${disabled}"/>Rural
                                                </label>
                                            </div>
                                            <div class="form-check">
                                            	<label class="form-check-label">
                                                	<form:radiobutton class="form-check-input" name="location" path="location" id="urbanLocation" value="urban"  disabled="${disabled}"/>Urban
                                                </label>
                                            </div>
                                        </fieldset>
                                    </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Area Coverage</label>
	                                    <c:if test = "${buttonText == 'Edit'}">
	                                    	<input type="text" class="form-control" id="areaCoverageText" disabled/>
	                                    </c:if>
	                                    <c:if test = "${buttonText == 'Save'}">
	                                    	<input type="text" class="form-control" id="areaCoverageText"/>
	                                    </c:if>
	                                </div>
	                                <c:if test = "${buttonText == 'Save'}">
		                                <div class="form-group col-sm-1">
		                                    <br>
		                                    <button onclick="addAreaCoverage()" type="button" class="btn btn-primary btn-action" id="areaCoverageButton" style="margin-top: 4px; height: 39px; width: 100%;"><i class="fa fa-plus" aria-hidden="true"></i> </button>
		                                </div>
	                                </c:if>
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
	                                    <form:checkbox path="hasBranch" disabled="${disabled}"/> 
	                                    <label>Has Branch?</label>
	                                </div>
                                </div>
                            </fieldset>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>