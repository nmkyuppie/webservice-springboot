<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/enquiry/list#active" method="GET">
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
							<th scope="col" nowrap="nowrap">Section</th>
							<th scope="col" nowrap="nowrap">Enquiry Date</th>
							<th scope="col" nowrap="nowrap">Completion Date</th>
							<th scope="col" nowrap="nowrap">Current Status</th>
							<th scope="col" nowrap="nowrap">Officer Name</th>
							<th scope="col" nowrap="nowrap">Report Date</th>
							<th scope="col">Result</th>
							<th scope="col">Action</th>
							<th scope="col" nowrap="nowrap">Documents</th>
							<th scope="col" nowrap="nowrap">Updated By</th>
							<th scope="col" nowrap="nowrap">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${enquiryHistoryList}" var="e">
							<tr>
								<td nowrap="nowrap">${e.id}</td>
								<td nowrap="nowrap">${e.section}</td>
								<td nowrap="nowrap">${e.enquiryDate}</td>
								<td nowrap="nowrap">${e.completionDate}</td>
								<td nowrap="nowrap">${e.currentStatus}</td>
								<td nowrap="nowrap">${e.officerName}</td>
								<td nowrap="nowrap">${e.reportDate}</td>
								<td nowrap="nowrap">${e.resultText}</td>
								<td nowrap="nowrap">${e.actionText}</td>
								<td nowrap="nowrap">${e.fileNames}</td>
								<td nowrap="nowrap">${e.updatedBy}</td>
								<td nowrap="nowrap">${e.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>