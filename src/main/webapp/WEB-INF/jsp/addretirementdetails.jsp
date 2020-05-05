<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<body>
<div class="row" style="padding:15px 0;">
	     <div class="col-lg-12" style="font-size:14px;">
	             <form:form method="POST" action="/retirementDetails/add#active" modelAttribute="retirementDetails">
	                 <fieldset>
	                 	<form:hidden class="form-control" name="id" path="id" value="" />
	                     
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-3">
		                          	<label class="col-form-label">Employee Name </label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:input type="text" class="form-control" name="employeeId" path="employeeId" required="required" />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-3">
		                          	<label class="col-form-label">Retirement Date </label>
		                          </div>
	                                <div class="col-sm-4">
	                               		<div id="rdDatePicker" class="input-group date" data-date-format="dd-mm-yyyy">
	   										<form:input class="form-control" type="text" readonly="readonly" name="retirementDate"  path="retirementDate"/>
	   										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
										</div>
	                                </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-3">
		                          	<label class="col-form-label">Joining Cadre </label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="joiningCadre" path="joiningCadre"  />
			                      </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-3">
		                          	<label class="col-form-label">Retiring Cadre </label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="retiringCadre" path="retiringCadre"  />
			                      </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-3">
		                          	<label class="col-form-label">Benefits To Be Settled</label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="benefitToBeSettled" path="benefitToBeSettled"  />
			                      </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-3">
		                          	<label class="col-form-label">Settled Upto Month</label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="settledUptoMonth" path="settledUptoMonth"  />
			                      </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-3">
		                          	<label class="col-form-label">Balance Amount</label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="balanceAmount" path="balanceAmount" pattern="([0-9]+[.,]*)+" required="required"  />
			                      </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-3">
		                          	<label class="col-form-label">Reason For Pending</label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="reasonForPending" path="reasonForPending"  />
			                      </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-3">
		                          	<label class="col-form-label">Type Of Benefit</label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="typeOfBenefit" path="typeOfBenefit"  />
			                      </div>
		                      </div>
	                          <div class="row" style="padding:10px;">
		                         <div class="col-sm-7">
		                      		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-save" aria-hidden="true"></i>&nbsp; Save Retirement Detail</button>
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