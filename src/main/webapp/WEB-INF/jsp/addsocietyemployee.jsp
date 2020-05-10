<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<div class="row" style="padding:15px 0;">
	     <div class="col-lg-12" style="font-size:14px;">
	             <form:form method="POST" action="/societyEmployee/add#active" modelAttribute="societyEmployee">
	                 <fieldset>
                            	<form:hidden class="form-control" name="id" path="id" value="" />
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Employee Name</label>
	                                    <form:input type="text" class="form-control" name="name" path="name" />
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Gender</label>
	                                    <form:select class="form-control" name="gender" path="gender" >
	                                    	<form:option value="Male">Male</form:option>
	                                    	<form:option value="Female">Female</form:option>
	                                    	<form:option value="Other">Other</form:option>
	                                    </form:select>  
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Date of Birth</label>
                                		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="dob"  path="dob"/>
    										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
										</div>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Qualification</label>
	                                    <form:input type="text" class="form-control"  name="qualification" path="qualification"/>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Cadre</label>
	                                    <form:input type="text" class="form-control"  name="cadre" path="cadre"/>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-2">
	                                    <label>Mobile Number</label>
	                                    <form:input type="text" class="form-control"  name="mobileNumber" path="mobileNumber" pattern="[0-9]{10}" maxlength="10" onkeyup="numberOnly(this, 10)" required="required"/>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Email Id</label>
	                                    <form:input type="text" class="form-control"  name="emailId" path="emailId" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$" placeholder="abc@email.com"/>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Aadhaar Number</label>
	                                    <form:input type="text" class="form-control" name="aadhaarNumber" path="aadhaarNumber" pattern="[0-9]{12}" maxlength="12" onkeyup="numberOnly(this, 12)" required="required"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>PAN</label>
	                                    <form:input type="text" class="form-control" name="pan" path="pan"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Appointed By</label>
	                                    <form:input type="text" class="form-control" name="appointedBy" path="appointedBy"/>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Joining Date</label>
                                		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="joiningDate"  path="joiningDate"/>
    										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
										</div>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Probation Date</label>
                                		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="probationDate"  path="probationDate"/>
    										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
										</div>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Regularisation Date</label>
                                		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="regularisationDate"  path="regularisationDate"/>
    										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
										</div>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Retirement Date</label>
                                		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="retirementDate"  path="retirementDate"/>
    										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
										</div>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-6">
	                                    <label>Address</label>
	                                    <form:input type="text" class="form-control" name="address" path="address"/> 
	                                </div>
			                     	<div class="form-group  col-sm-3"><br>
				                     	<div class="custom-control custom-checkbox custom-control-inline">
				  							<form:checkbox class="custom-control-input" path="isDisabledPerson" name="isDisabledPerson"></form:checkbox>
				  							<label class="custom-control-label" for="isDisabledPerson1">Is he/she a physically challenged?</label>
										</div>
									</div>
                                </div>
                                <div class="form-row">
			                     	<div class="form-group  col-sm-6" style="padding-left: 0;">
	                                    <label>&nbsp;</label>
				                     	<div class="custom-control custom-checkbox custom-control-inline">
				  							<form:checkbox class="custom-control-input" path="isSuspended" name="isSuspended" onchange="$('#suspensionReason').toggle();"></form:checkbox>
				  							<label class="custom-control-label" for="isSuspended1">Is Suspended?</label>
										</div>
										<c:if test="${societyEmployee.isSuspended == true}">  
	                                    	<form:textarea  class="form-control" name="suspensionReason" path="suspensionReason" placeholder="Suspension reason"/>
	                                    </c:if>
										<c:if test="${societyEmployee.isSuspended == false}">  
	                                    	<form:textarea  class="form-control" name="suspensionReason" path="suspensionReason" placeholder="Suspension reason"  style="display: none;"/>
	                                    </c:if>
	                                </div>
			                     	<div class="form-group  col-sm-6" style="padding-left: 0;">
	                                    <label>&nbsp;</label>
				                     	<div class="custom-control custom-checkbox custom-control-inline">
				  							<form:checkbox class="custom-control-input" path="isDismissed" name="isDismissed" onchange="$('#dismissReason').toggle();"></form:checkbox>
				  							<label class="custom-control-label" for="isDismissed1">Is Dismissed?</label>
										</div>
										<c:if test="${societyEmployee.isDismissed == true}">  
	                                    	<form:textarea  class="form-control" name="dismissReason" path="dismissReason" placeholder="Dismiss reason" />
	                                    </c:if>
										<c:if test="${societyEmployee.isDismissed == false}">  
	                                    	<form:textarea  class="form-control" name="dismissReason" path="dismissReason" placeholder="Dismiss reason"  style="display: none;"/>
	                                    </c:if>
	                                </div>
                                </div>
                                <div class="form-row">
			                     	<div class="form-group  col-sm-6" style="padding-left: 0;">
	                                    <label>&nbsp;</label>
				                     	<div class="custom-control custom-checkbox custom-control-inline">
				  							<form:checkbox class="custom-control-input" path="isRemoved" name="isRemoved" onchange="$('#removedReason').toggle();"></form:checkbox>
				  							<label class="custom-control-label" for="isRemoved1">Is Removed?</label>
										</div>
										<c:if test="${societyEmployee.isRemoved == true}">  
	                                    	<form:textarea  class="form-control" name="removedReason" path="removedReason" placeholder="Removed reason"/>
	                                    </c:if>
										<c:if test="${societyEmployee.isRemoved == false}">  
	                                    	<form:textarea  class="form-control" name="removedReason" path="removedReason" placeholder="Removed reason" style="display: none;"/>
	                                    </c:if>
	                                </div>
                                </div>
	                          <div class="row">
		                         <div class="col-sm-12">
		                      		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-save" aria-hidden="true"></i>&nbsp; Save Employee</button>
		                      		<c:if test="${isEdit == true}">
		                      			<button type="button" class="btn btn-primary btn-action float-right" style="margin-right:15px;" data-toggle="modal" data-target="#familyDetailsModal"><i class="fa fa-house-user" aria-hidden="true"></i>&nbsp; Add Family Details</button>
		                      			<button type="button" class="btn btn-primary btn-action float-right" style="margin-right:15px;"  onClick="window.location.reload();"><i class="fa fa-sync-alt" aria-hidden="true"></i>&nbsp; Refresh</button>
									</c:if>
		                      		<button type="reset" class="btn btn-default btn-action float-right" style="margin-right:15px;"><i class="fa fa-eraser" aria-hidden="true"></i>&nbsp; Clear</button>
									<span class="badge badge-success  float-right">${message }</span>
								</div>
	                        </div>
                            </fieldset>
	           </form:form>
	           <%@ include file = "addfamilydetails.jsp" %><br>
	           <%@ include file = "family.jsp" %>
	   </div>
</div>
</body>
</html>