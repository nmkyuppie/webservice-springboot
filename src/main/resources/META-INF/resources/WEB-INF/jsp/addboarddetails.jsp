<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<body>
<div class="row" style="padding:15px 0;">
	     <div class="col-lg-12" style="font-size:14px;">
	             <form:form method="POST" action="/boardDetails/add#active" modelAttribute="boardDetails">
	                 <fieldset>
	                 	<form:hidden class="form-control" name="id" path="id" value="" />
	                     
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Name </label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="name" path="name" required="required"  />
			                      </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Gender </label>
		                          </div>
		                          <div class="col-sm-4">
	                                    <form:select class="form-control" name="gender" path="gender" >
	                                    	<form:option value="Male">Male</form:option>
	                                    	<form:option value="Female">Female</form:option>
	                                    	<form:option value="Other">Other</form:option>
	                                    </form:select> 
			                      </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Position</label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:select class="form-control" name="position" path="position" >
			                          	<form:option value="President" selected="selected">President</form:option>
			                          	<form:option value="Vice President">Vice President</form:option>
			                          	<form:option value="Director">Director</form:option>
			                        </form:select> 
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Phone Number</label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="phoneNumber" path="phoneNumber" required="required"  />
			                      </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Address</label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="address" path="address" required="required"  />
			                      </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Aadhaar</label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="aadhaar" path="aadhaar" required="required"  />
			                      </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Community</label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="community" path="community" required="required"  />
			                      </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Elected Year </label>
		                          </div>
		                          <div class="col-sm-2">
		                          	<form:input type="text" class="form-control" name="electedYearFrom" path="electedYearFrom" placeholder="XXXX - Year Start" pattern="[0-9]{4}" maxlength="4" onkeyup="numberOnly(this, 4)" required="required" />
		                          </div>
		                          <div class="col-sm-2">
		                          	<form:input type="text" class="form-control" name="electedYearTo" path="electedYearTo" placeholder="XXXX - Year End" pattern="[0-9]{4}" maxlength="4" onkeyup="numberOnly(this, 4)" required="required"  />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label" for="isActive">Is Active? </label>
					                </div>
									<div class="col-sm-4">
				                     	<form:checkbox path="isActive" style="margin-top:10px;"/>
									</div>
								</div>
	                          <div class="row" style="padding:10px;">
		                         <div class="col-sm-6">
		                      		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-floppy-o" aria-hidden="true"></i> Save Board Detail</button>
		                      		<button type="reset" class="btn btn-default btn-action float-right" style="margin-right:15px;"><i class="fa fa-eraser" aria-hidden="true"></i> Clear</button>
									<span class="badge badge-success  float-right" style="margin-left:0px;">${message }</span>
								</div>
	                        </div>
	               </fieldset>
	           </form:form>
	   </div>
</div>
</body>
</html>