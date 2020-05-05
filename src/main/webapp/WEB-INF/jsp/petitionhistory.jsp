<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/petition/list#active" method="GET">
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
							<th scope="col" nowrap="nowrap">Employee Name</th>
							<th scope="col" nowrap="nowrap">Received Date</th>
							<th scope="col" nowrap="nowrap">Completion Date</th>
							<th scope="col" nowrap="nowrap">Current Status</th>
							<th scope="col" nowrap="nowrap">Action Taken</th>
							<th scope="col" nowrap="nowrap">Documents</th>
							<th scope="col" nowrap="nowrap">Updated By</th>
							<th scope="col" nowrap="nowrap">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${petitionHistoryList}" var="ph">
							<tr>
								<td nowrap="nowrap">${ph.id}</td>
								<td nowrap="nowrap">${ph.againstEmployee}</td>
								<td nowrap="nowrap">${ph.receivedDate}</td>
								<td nowrap="nowrap">${ph.completionDate}</td>
								<td nowrap="nowrap">${ph.status}</td>
								<td nowrap="nowrap">${ph.actionTaken}</td>
								<td nowrap="nowrap">${ph.fileNames}</td>
								<td nowrap="nowrap">${ph.updatedBy}</td>
								<td nowrap="nowrap">${ph.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>