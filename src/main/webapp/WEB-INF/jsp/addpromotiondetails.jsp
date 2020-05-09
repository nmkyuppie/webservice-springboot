<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<body>
<div class="row" style="padding:15px 0;">
	     <div class="col-lg-12" style="font-size:14px;">
	             <form:form method="POST" action="/promotionDetails/add#active" modelAttribute="promotionDetails">
	                 <fieldset>
	                 	<form:hidden class="form-control" name="id" path="id" value="" />
	                     
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Employee Name </label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:input type="text" class="form-control" name="name" path="name" required="required"  />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Promoted To</label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:input type="text" class="form-control" name="promotedTo" path="promotedTo" required="required"  />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Current Cadre</label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:input type="text" class="form-control" name="currentCadre" path="currentCadre" required="required"  />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Promoted On</label>
		                          </div>
		                          <div class="col-sm-4">
                               		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
   										<form:input class="form-control" type="text" readonly="readonly" name="promotedOn"  path="promotedOn"/>
   										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
									</div>
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Approved By</label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:input type="text" class="form-control" name="approvedBy" path="approvedBy" required="required"  />
		                          </div>
		                      </div>
		                      <div class="row">
		                      	<div class="col-lg-4 offset-lg-2" style="margin-top:15px;">
                                   <fieldset class="form-group">
                                       <div class="form-check form-check-inline">
                                           <label class="form-check-label">
                                           	<form:radiobutton class="form-check-input" value="true" name="promotedOrDePromoted" path="promotedOrDePromoted" />Promoted
                                           </label>
                                       </div>
                                       <div class="form-check form-check-inline">
                                           <label class="form-check-label">
                                           	<form:radiobutton class="form-check-input" value="false" name="promotedOrDePromoted" path="promotedOrDePromoted" />Depromoted
                                           </label>
                                       </div>
                                   </fieldset>
                               	</div>
		                      </div>
	                          <div class="row" style="padding:10px;">
		                         <div class="col-sm-6">
		                      		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-save" aria-hidden="true"></i>&nbsp; Save Promotion Details</button>
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