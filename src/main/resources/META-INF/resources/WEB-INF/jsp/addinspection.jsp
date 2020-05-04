<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<div class="row" style="padding:15px 0;">
	     <div class="col-lg-12" style="font-size:14px;">
	             <form:form method="POST" action="/inspection/add#active" modelAttribute="inspection" enctype="multipart/form-data">
	                 <fieldset>
                            	<form:hidden class="form-control" name="id" path="id" value="" />
	                    		<form:hidden name="documentId" path="documentId" />
                                <div class="form-row">
	                                <div class="form-group col-sm-4">
	                                    <label>Inspection Date</label>
                                		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="date"  path="date"/>
    										<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
										</div>
	                                </div>
	                                <div class="form-group col-sm-4">
	                                    <label>Inspection Name</label>
	                                    <form:input type="text"  class="form-control" name="inspectorName" path="inspectorName" />
	                                </div>
		                            <div class="form-group col-sm-4">
	                                    <label>Inspection Cadre</label>
			                          	<form:select class="form-control" name="inspector" path="inspector" >
				                          	<form:option value="Registrar" selected="selected">Registrar</form:option>
				                          	<form:option value="Add Reg">Add Reg</form:option>
				                          	<form:option value="JR">JR</form:option>
				                          	<form:option value="JR MD">JR MD</form:option>
				                          	<form:option value="District Vigilance">District Vigilance</form:option>
				                          	<form:option value="Special Squad">Special Squad</form:option>
				                          	<form:option value="DR">DR</form:option>
				                          	<form:option value="PDS DR">PDS DR</form:option>
				                          	<form:option value="Central Bank CRO">Central Bank CRO</form:option>
				                          	<form:option value="FOC">FOC</form:option>
				                          	<form:option value="SI">SI</form:option>
				                          	<form:option value="FM">FM</form:option>
				                          	<form:option value="CS">CS</form:option>
				                        </form:select> 
	                                </div>
                                </div>
                                <div class="form-row">
	                                <div class="form-group col-sm-4">
	                                    <label>Inspection Reason</label>
	                                    <form:textarea  class="form-control" name="reason" path="reason" />
	                                </div>
	                                <div class="form-group col-sm-4">
	                                    <label>Action Taken</label>
	                                    <form:textarea  class="form-control" name="actionTaken" path="actionTaken" />
	                                </div>
	                                <div class="form-group col-sm-4">
	                                    <label>Report</label>
	                                    <form:textarea  class="form-control" name="report" path="report" />
	                                </div>
                                </div>
	                          <div class="form-row">
	                                <div class="form-group col-sm-2">
	                                    <label>&nbsp;</label>
	                                    <input type="file" class="form-control-file" name="file" multiple="multiple" style="padding-top:5px;" />
	                                </div>
		                          <div class="form-group col-sm-10" style="padding-left:0;">
	                                    <label>&nbsp;</label>
	                                    <div id="areaHolder">
											<c:forEach var="d" items="${documents}">
												<span class='badge badge-light' style='margin:5px 15px;'>${d.fileName}
													&nbsp;
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
		                         <div class="col-sm-12">
		                      		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-floppy-o" aria-hidden="true"></i> Save Inspection</button>
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