<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<div class="row" style="padding:15px 0;">
	     <div class="col-lg-12" style="font-size:14px;">
	             <form:form method="POST" action="/rti/add#active" modelAttribute="rti" enctype="multipart/form-data">
	                 <fieldset>
	                 			<form:hidden class="form-control" name="id" path="id" value="" />
	                    		<form:hidden name="documentId" path="documentId" />
	                     
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Petitioner Name </label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:input type="text" class="form-control" name="petitionerName" path="petitionerName" />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Address </label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:input type="text" class="form-control" name="address" path="address" />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Subject </label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:input type="text" class="form-control" name="subject" path="subject" />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Description </label>
		                          </div>
		                          <div class="col-sm-4">
	                                    <form:textarea  class="form-control" name="description" path="description" />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Received Date</label>
		                          </div>
		                          <div class="col-sm-4">
                               		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
   										<form:input class="form-control" type="text" readonly="readonly" name="receivedDate"  path="receivedDate"/>
   										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
									</div>
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Completion Date</label>
		                          </div>
		                          <div class="col-sm-4">
                               		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
   										<form:input class="form-control" type="text" readonly="readonly" name="completionDate"  path="completionDate"/>
   										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
									</div>
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Report Date</label>
		                          </div>
		                          <div class="col-sm-4">
                               		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
   										<form:input class="form-control" type="text" readonly="readonly" name="reportDate"  path="reportDate"/>
   										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
									</div>
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Pending Reason</label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:input type="text" class="form-control" name="pendingReason" path="pendingReason" />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:0 10px;">
	                                <div class="form-group col-sm-6">
	                                    <label>&nbsp;</label>
	                                    <input type="file" class="form-control-file" name="file" multiple="multiple" style="padding-top:5px;" />
	                                </div>
		                      </div>
		                      <div class="row" style="padding:0 10px;">
		                          <div class="form-group col-sm-6" style="padding-left:0;">
	                                    <label>&nbsp;</label>
	                                    <div id="areaHolder">
											<c:forEach var="d" items="${documents}">
												<span class='badge badge-light' style='margin:5px 15px;'>${d.fileName}
													&nbsp;
												</span>
											</c:forEach>
											<c:if test="${not empty documents}">
												<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#documentModal" style="margin:5px 15px">
												  <i class='fa fa-external-link-alt badgeAction' title='Remove it!' onclick="removeDocument(this)"></i>
												</button>
											</c:if>
	                                    </div>
		                          </div>
		                      </div>
	                          <div class="row" style="padding:10px;">
		                         <div class="col-sm-6">
		                      		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-save" aria-hidden="true"></i>&nbsp; Save RTI</button>
		                      		<button type="reset" class="btn btn-default btn-action float-right" style="margin-right:15px;"><i class="fa fa-eraser" aria-hidden="true"></i>&nbsp; Clear</button>
									<span class="badge badge-success  float-right" style="margin:2px 20px;">${message }</span>
								</div>
	                        </div>
	               </fieldset>
	           </form:form>
	           <%@ include file = "document.jsp" %>
	   </div>
</div>
</body>
</html>