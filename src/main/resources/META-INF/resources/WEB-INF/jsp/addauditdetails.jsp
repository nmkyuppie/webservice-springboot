<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<body>
<div class="row" style="padding:15px 0;">
	     <div class="col-lg-12" style="font-size:14px;">
	             <form:form method="POST" action="/auditDetails/add#active" modelAttribute="auditDetails">
	                 <fieldset>
                            	<form:hidden class="form-control" name="id" path="id" value="" />
                                <div class="form-row">
									<div class="form-group col-sm-2">
										<label>Year</label>
										<form:input type="text" class="form-control" name="yearStart" path="yearStart" placeholder="XXXX - Year Start" pattern="[0-9]{4}" maxlength="4" onkeyup="numberOnly(this, 4)" required="required" />
									</div>
									<div class="form-group col-sm-2">
										<label>&nbsp; </label>
										<form:input type="text" class="form-control" name="yearEnd" path="yearEnd" placeholder="XXXX - Year End" pattern="[0-9]{4}" maxlength="4" onkeyup="numberOnly(this, 4)" required="required" />
									</div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-2">
	                                    <label>Profit</label>
	                                    <form:input type="text" class="form-control" name="profit" path="profit" />
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Loss</label>
	                                    <form:input type="text" class="form-control" name="loss" path="loss" />
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Net Profit</label>
	                                    <form:input type="text" class="form-control"  name="netProfit" path="netProfit"/>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Cumulative Loss</label>
	                                    <form:input type="text" class="form-control"  name="cumulativeLoss" path="cumulativeLoss"/>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Imbalance</label>
	                                    <form:input type="text" class="form-control"  name="imbalance" path="imbalance"/>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Cover Deficit</label>
	                                    <form:input type="text" class="form-control" name="coverDeficit" path="coverDeficit"/>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-2">
	                                    <label>Share Capital</label>
	                                    <form:input type="text" class="form-control" name="shareCapital" path="shareCapital"/>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Working Capital</label>
	                                    <form:input type="text" class="form-control" name="workingCapital" path="workingCapital"/>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Loan Advances</label>
	                                    <form:input type="text" class="form-control" name="loanAdvances" path="loanAdvances"/>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Loan Outstanding</label>
	                                    <form:input type="text" class="form-control" name="loanOutstanding" path="loanOutstanding"/> 
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Loan Overdue</label>
	                                    <form:input type="text" class="form-control" name="loanOverdue" path="loanOverdue"/>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Statutory Reserves</label>
	                                    <form:input type="text" class="form-control" name="statutoryReserves" path="statutoryReserves"/>
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-2">
	                                    <label>Other Reserves</label>
	                                    <form:input type="text" class="form-control" name="otherReserves" path="otherReserves"/>
	                                </div>
	                                <div class="form-group col-sm-2">
	                                    <label>Borrowings</label>
	                                    <form:input type="text" class="form-control" name="borrowings" path="borrowings"/>
	                                </div>
                                </div>
	                          <div class="row" style="padding:10px;">
		                         <div class="col-sm-12">
		                      		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-floppy-o" aria-hidden="true"></i> Save Audit Detail</button>
		                      		<button type="reset" class="btn btn-default btn-action float-right" style="margin-right:15px;"><i class="fa fa-eraser" aria-hidden="true"></i> Clear</button>
									<span class="badge badge-success  float-right">${message }</span>
								</div>
	                        </div>
                            </fieldset>
	           </form:form>
	   </div>
</div>
</body>
</html>