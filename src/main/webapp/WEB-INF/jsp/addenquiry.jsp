<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<div class="row" style="padding:15px 0;">
	     <div class="col-lg-12" style="font-size:14px;">
	             <form:form method="POST" action="/enquiry/add#active" modelAttribute="enquiry" enctype="multipart/form-data">
	                 <fieldset>
                            	<form:hidden class="form-control" name="id" path="id" value="" />
	                    		<form:hidden name="documentId" path="documentId" />
                                <div class="form-row">
		                            <div class="form-group col-sm-4">
	                                    <label>Section</label>
			                          	<form:select class="form-control" name="section" path="section" >
				                          	<form:option value="81" selected="selected">81</form:option>
				                          	<form:option value="82">82</form:option>
				                        </form:select> 
	                                </div>
	                                <div class="form-group col-sm-4">
	                                    <label>Officer Name</label>
	                                    <form:input type="text"  class="form-control" name="officerName" path="officerName" />
	                                </div>
	                                <div class="form-group col-sm-4">
	                                    <label>Current Status</label>
	                                    <form:input type="text"  class="form-control" name="currentStatus" path="currentStatus" />
	                                </div>
                              	</div>
                              	<div class="form-row">
	                                <div class="form-group col-sm-4">
	                                    <label>Report Date</label>
                                		<div id="dobdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="reportDate"  path="reportDate"/>
    										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
										</div>
	                                </div>
	                                <div class="form-group col-sm-4">
	                                    <label>Enquiry Date</label>
                                		<div id="edatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="enquiryDate"  path="enquiryDate"/>
    										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
										</div>
	                                </div>
	                                <div class="form-group col-sm-4">
	                                    <label>Completion Date</label>
                                		<div id="cdatepicker" class="input-group date" data-date-format="dd-mm-yyyy">
    										<form:input class="form-control" type="text" readonly="readonly" name="completionDate"  path="completionDate"/>
    										<span class="input-group-addon"><i class="fa fa-calendar-alt"></i></span>
										</div>
	                                </div>
                              	</div>
                              	<div class="form-row">
	                                <div class="form-group col-sm-6">
	                                    <label>Result</label>
	                                    <form:textarea  class="form-control" name="resultText" path="resultText" />
	                                </div>
	                                <div class="form-group col-sm-6">
	                                    <label>Action</label>
	                                    <form:textarea  class="form-control" name="actionText" path="actionText" />
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
												  <i class='fa fa-external-link-alt badgeAction' title='Remove it!' onclick="removeDocument(this)"></i>
												</button>
											</c:if>
	                                    </div>
		                          </div>
		                      </div>
	                          <div class="row" style="padding:10px;">
		                         <div class="col-sm-12">
		                      		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-save" aria-hidden="true"></i>&nbsp; Save Enquiry</button>
		                      		<button type="reset" class="btn btn-default btn-action float-right" style="margin-right:15px;"><i class="fa fa-eraser" aria-hidden="true"></i>&nbsp; Clear</button>
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