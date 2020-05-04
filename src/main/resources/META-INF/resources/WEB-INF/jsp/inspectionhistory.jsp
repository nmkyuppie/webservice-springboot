<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/inspection/list#active" method="GET">
    			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-arrow-left" aria-hidden="true"></i> Back</button>
    		</form>
    	</div>
    </div>
	<div class="row">
		<div class="col-lg-12" style="font-size: 14px;">
			<div class="basicDetailsTable">
				<table class="table table-sm">
					<thead>
						<tr>
							<th scope="col" nowrap="nowrap">#</th>
							<th scope="col" nowrap="nowrap">Date of Inspection</th>
							<th scope="col" nowrap="nowrap">Inspector Name</th>
							<th scope="col" nowrap="nowrap">Inspector Cadre</th>
							<th scope="col" nowrap="nowrap">Reason for Visit</th>
							<th scope="col" nowrap="nowrap">Action Taken</th>
							<th scope="col" nowrap="nowrap">Report</th>
							<th scope="col" nowrap="nowrap">Document</th>
							<th scope="col" nowrap="nowrap">Updated By</th>
							<th scope="col" nowrap="nowrap">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${inspectionHistoryList}" var="ih">
							<tr>
								<td nowrap="nowrap">${ih.id}</td>
								<td nowrap="nowrap">${ih.date}</td>
								<td nowrap="nowrap">${ih.inspectorName}</td>
								<td nowrap="nowrap">${ih.inspector}</td>
								<td nowrap="nowrap">${ih.reason}</td>
								<td nowrap="nowrap">${ih.actionTaken}</td>
								<td nowrap="nowrap">${ih.report}</td>
								<td nowrap="nowrap">${ih.fileNames}</td>
								<td nowrap="nowrap">${ih.updatedBy}</td>
								<td nowrap="nowrap">${ih.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>