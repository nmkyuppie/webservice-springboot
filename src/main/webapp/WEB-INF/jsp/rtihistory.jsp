<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/rti/list#active" method="GET">
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
							<th scope="col" nowrap="nowrap">Petitioner Name</th>
							<th scope="col" nowrap="nowrap">Address</th>
							<th scope="col" nowrap="nowrap">Subject</th>
							<th scope="col" nowrap="nowrap">Description</th>
							<th scope="col" nowrap="nowrap">Received Date</th>
							<th scope="col" nowrap="nowrap">Completion Date</th>
							<th scope="col" nowrap="nowrap">Report Date</th>
							<th scope="col" nowrap="nowrap">Pending Reason</th>
							<th scope="col" nowrap="nowrap">Documents</th>
							<th scope="col" nowrap="nowrap">Updated By</th>
							<th scope="col" nowrap="nowrap">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${rtiHistoryList}" var="rti">
							<tr>
								<td nowrap="nowrap">${rti.id}</td>
								<td nowrap="nowrap">${rti.petitionerName}</td>
								<td nowrap="nowrap">${rti.address}</td>
								<td nowrap="nowrap">${rti.subject}</td>
								<td nowrap="nowrap">${rti.description}</td>
								<td nowrap="nowrap">${rti.receivedDate}</td>
								<td nowrap="nowrap">${rti.completionDate}</td>
								<td nowrap="nowrap">${rti.reportDate}</td>
								<td nowrap="nowrap">${rti.pendingReason}</td>
								<td nowrap="nowrap">${rti.fileNames}</td>
								<td nowrap="nowrap">${rti.updatedBy}</td>
								<td nowrap="nowrap">${rti.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>