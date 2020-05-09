<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	                                    <label>Mobile Number</label>
	                                    <form:input type="text" class="form-control"  name="mobileNumber" path="mobileNumber" pattern="[0-9]{10}" maxlength="10" onkeyup="numberOnly(this, 10)" required="required"/>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-3">
	                                    <label>Email Id</label>
	                                    <form:input type="text" class="form-control"  name="emailId" path="emailId" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$" placeholder="abc@email.com"/>
	                                </div>
	                                <div class="form-group col-sm-3">
	                                    <label>Cadre</label>
	                                    <form:input type="text" class="form-control"  name="cadre" path="cadre"/>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Joining Date</label>
                                		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="joiningDate"  path="joiningDate"/>
    										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
										</div>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Retirement Date</label>
                                		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="retirementDate"  path="retirementDate"/>
    										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
										</div>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Appointed By</label>
	                                    <form:input type="text" class="form-control" name="appointedBy" path="appointedBy"/>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-5">
	                                    <label>Address</label>
	                                    <form:input type="text" class="form-control" name="address" path="address"/> 
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>PAN</label>
	                                    <form:input type="text" class="form-control" name="pan" path="pan"/>
	                                </div>
                                </div>
	                          <div class="row" style="padding:10px;">
			                     	<div class="form-group  col-sm-3">
	                                    <label>&nbsp;</label>
				                     	<div class="custom-control custom-checkbox custom-control-inline">
				  							<input type="checkbox" class="custom-control-input" id="isDisabledPerson" name="isDisabledPerson">
				  							<label class="custom-control-label" for="isDisabledPerson">Is he/she a physically challenged?</label>
										</div>
									</div>
		                         <div class="col-sm-9">
		                      		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-save" aria-hidden="true"></i>&nbsp; Save Employee</button>
		                      		<button type="reset" class="btn btn-default btn-action float-right" style="margin-right:15px;"><i class="fa fa-eraser" aria-hidden="true"></i>&nbsp; Clear</button>
									<span class="badge badge-success  float-right">${message }</span>
								</div>
	                        </div>
                            </fieldset>
	           </form:form>
	   </div>
</div>
</body>
</html>