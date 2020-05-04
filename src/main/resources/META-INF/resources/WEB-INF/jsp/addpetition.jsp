<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<div class="row" style="padding:15px 0;">
	     <div class="col-lg-12" style="font-size:14px;">
	             <form:form method="POST" action="/petition/add#active" modelAttribute="petition" name="petitionForm" enctype="multipart/form-data">
	                 <fieldset>
	                 	<form:hidden name="id" path="id" value="" />
	                    <form:hidden name="documentId" path="documentId" />
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Against Employee </label>
		                          </div>
		                          <div class="col-sm-4">
		                          	<form:input type="text" class="form-control" name="againstEmployee" path="againstEmployee" required="required"  />
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Received Date</label>
		                          </div>
		                          <div class="col-sm-4">
                               		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
   										<form:input class="form-control" type="text" readonly="readonly" name="receivedDate"  path="receivedDate"/>
   										<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
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
   										<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
									</div>
		                          </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Current Status</label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="status" path="status" required="required"  />
			                      </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Action Taken</label>
		                          </div>
		                          <div class="col-sm-4">
			                          <form:input type="text" class="form-control" name="actionTaken" path="actionTaken" required="required"  />
			                      </div>
		                      </div>
		                      <div class="row" style="padding:10px;">
		                          <div class="col-sm-2">
		                          	<label class="col-form-label">Document</label>
		                          </div>
		                          <div class="col-sm-4">
			                          <div class="form-group">
									    <input type="file" class="form-control-file" name="file" multiple="multiple" style="padding-top:5px;">
									  </div>
			                      </div>
		                      </div>
	                          <div class="row" style="padding:10px;padding-top:0">
		                          <div class="col-sm-10 offset-lg-2" style="padding-left:0;">
	                                    <div id="areaHolder">
											<c:forEach var="d" items="${documents}">
												<span class='badge badge-light' style='margin:5px 15px;'>${d.fileName}
													&nbsp;&nbsp;<i data='${d.id}' class='fa fa-times-circle badgeAction' title='Remove it!' onclick="removeDocument(this)"></i>
												</span>
											</c:forEach>
											<c:if test="${not empty documents}">
												<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#documentModal" style="margin:5px 15px">
												  <i class='fa fa-external-link badgeAction' title='Remove it!' onclick="removeDocument(this)"></i>
												</button>
											</c:if>
	                                    </div>
		                          </div>
		                      </div>
	                          <div class="row" style="padding:10px;">
		                         <div class="col-sm-6">
		                      		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-floppy-o" aria-hidden="true"></i> Save Petition</button>
		                      		<button type="reset" class="btn btn-default btn-action float-right" style="margin-right:15px;"><i class="fa fa-eraser" aria-hidden="true"></i> Clear</button>
									<span class="badge badge-success  float-right">${message }</span>
								</div>
	                        </div>
	               </fieldset>
	           </form:form>
	           
			   <%@ include file = "document.jsp" %>
	   </div>
</div>
</body>
</html>