<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<body>
<div class="row" style="padding:15px 0;">
	     <div class="col-lg-12" style="font-size:14px;">
	             <form:form method="POST" action="/shares/add#active" modelAttribute="shares">
	                 <fieldset>
	                 	<form:hidden class="form-control" name="id" path="id" value="" />
	                     
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Year </label>
		                          </div>
		                          <div class="col-sm-2">
		                          	<form:input type="text" class="form-control" name="yearStart" path="yearStart" placeholder="XXXX - Year Start" pattern="[0-9]{4}" maxlength="4" onkeyup="numberOnly(this, 4)" required="required" />
		                          </div>
		                          <div class="col-sm-2">
		                          	<form:input type="text" class="form-control" name="yearEnd" path="yearEnd" placeholder="XXXX - Year End" pattern="[0-9]{4}" maxlength="4" onkeyup="numberOnly(this, 4)" required="required"  />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Type </label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:select class="form-control" name="type" path="type" >
			                          	<form:option value="Government">Government</form:option>
			                          	<form:option value="Society">Society</form:option>
			                          	<form:option value="Others">Others</form:option>
			                        </form:select> 
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Total Amount </label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="amount" path="amount" pattern="([0-9]+[.,]*)+" required="required"  />
			                      </div>
		                      </div>
	                          <div class="row" style="padding:10px;">
		                         <div class="col-sm-6">
		                      		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-save" aria-hidden="true"></i>&nbsp; Save Shares</button>
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