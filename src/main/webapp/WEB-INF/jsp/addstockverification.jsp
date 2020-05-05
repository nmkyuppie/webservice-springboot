<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<body>
<div class="row" style="padding:15px 0;">
	     <div class="col-lg-12" style="font-size:14px;">
	             <form:form method="POST" action="/stockVerification/add#active" modelAttribute="stockVerification">
	                 <fieldset>
	                 	<form:hidden class="form-control" name="id" path="id" value="" />
	                     
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Date</label>
		                          </div>
		                          <div class="col-sm-4">
                               		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
   										<form:input class="form-control" type="text" readonly="readonly" name="date"  path="date"/>
   										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
									</div>
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Defects </label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:input type="text" class="form-control" name="defects" path="defects" required="required"  />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Officer Name</label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:input type="text" class="form-control" name="officerName" path="officerName" required="required"  />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Fine Amount </label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="fineAmount" path="fineAmount" pattern="([0-9]+[.,]*)+" required="required"  />
			                      </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Fine Remittance</label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:input type="text" class="form-control" name="fineRemittance" path="fineRemittance" required="required"  />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Fine Date</label>
		                          </div>
		                          <div class="col-sm-4">
                               		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
   										<form:input class="form-control" type="text" readonly="readonly" name="fineDate"  path="fineDate"/>
   										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
									</div>
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Challan Number</label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:input type="text" class="form-control" name="fineChallanNumber" path="fineChallanNumber" required="required"  />
		                          </div>
		                      </div>
	                          <div class="row" style="padding:10px;">
		                         <div class="col-sm-6">
		                      		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-save" aria-hidden="true"></i>&nbsp; Save Stock Verification</button>
		                      		<button type="reset" class="btn btn-default btn-action float-right" style="margin-right:15px;"><i class="fa fa-eraser" aria-hidden="true"></i>&nbsp; Clear</button>
									<span class="badge badge-success  float-right" style="margin:2px 20px 2px 0px">${message }</span>
								</div>
	                        </div>
	               </fieldset>
	           </form:form>
	   </div>
</div>
</body>
</html>