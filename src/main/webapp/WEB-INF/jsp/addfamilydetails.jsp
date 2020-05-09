<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

	           
<div class="modal fade" id="familyDetailsModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h6 class="modal-title" id="exampleModalLabel"><i class="fa fa-house-user" aria-hidden="true"></i> &nbsp;Family Details</h6>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	      <form:form method="POST" action="/family" modelAttribute="family">
	                 <fieldset>
	                 			<input type="hidden" name="action" value="add">
	                 			<form:hidden class="form-control" name="familyId" path="familyId" value="" />
	                 			<form:hidden class="form-control" name="familyEmployeeId" path="familyEmployeeId" value="${societyEmployee.id}" />
	                     
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-4">
		                          	<label class="col-form-label">Name </label>
		                          </div>
		                          <div class="col-sm-8">
		                          	<form:input type="text" class="form-control" name="familyName" path="familyName" />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-4">
		                          	<label class="col-form-label">Age </label>
		                          </div>
		                          <div class="col-sm-8">
		                          	<form:input type="text" class="form-control" name="familyAge" path="familyAge" />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-4">
		                          	<label class="col-form-label">Date of Birth</label>
		                          </div>
		                          <div class="col-sm-8">
                               		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
   										<form:input class="form-control" type="text" readonly="readonly" name="familyDob"  path="familyDob"/>
   										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
									</div>
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-4">
		                          	<label class="col-form-label">Gender </label>
		                          </div>
		                          <div class="col-sm-8">
			                          	<form:select class="form-control" name="familyGender" path="familyGender" >
				                          	<form:option value="Male" selected="selected">Male</form:option>
				                          	<form:option value="Female">Female</form:option>
				                          	<form:option value="Other">Other</form:option>
				                        </form:select> 
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-4">
		                          	<label class="col-form-label">Relation </label>
		                          </div>
		                          <div class="col-sm-8">
			                          	<form:select class="form-control" name="familyRelation" path="familyRelation" >
				                          	<form:option value="Father" selected="selected">Father</form:option>
				                          	<form:option value="Mother">Mother</form:option>
				                          	<form:option value="Husband">Husband</form:option>
				                          	<form:option value="Wife">Wife</form:option>
				                          	<form:option value="Son">Son</form:option>
				                          	<form:option value="Daughter">Daughter</form:option>
				                          	<form:option value="Brother">Brother</form:option>
				                          	<form:option value="Sister">Sister</form:option>
				                        </form:select> 
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                         <div class="col-sm-12">
		                      		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-save" aria-hidden="true"></i>&nbsp; Save Family Member</button>
		                      		<button type="reset" class="btn btn-default btn-action float-right" style="margin-right:15px;"><i class="fa fa-eraser" aria-hidden="true"></i>&nbsp; Clear</button>
									<span class="badge badge-success  float-right" style="margin:2px 20px;">${familyMessage }</span>
								</div>
	                        </div>
	               </fieldset>
	           </form:form>
	         
      </div>
    </div>
  </div>
</div>