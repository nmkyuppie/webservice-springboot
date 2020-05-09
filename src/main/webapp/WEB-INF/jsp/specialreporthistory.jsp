<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/specialReport/list#active" method="GET">
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
							<th scope="col" nowrap="nowrap">Report Name</th>
							<th scope="col" nowrap="nowrap">Year</th>
							<th scope="col" nowrap="nowrap">Received Date</th>
							<th scope="col" nowrap="nowrap">Action Date</th>
							<th scope="col" nowrap="nowrap">Is Completed?</th>
							<th scope="col" nowrap="nowrap">Pending Reason</th>
							<th scope="col" nowrap="nowrap">Updated By</th>
							<th scope="col" nowrap="nowrap">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${specialReportHistoryList}" var="srh">
							<tr>
								<td nowrap="nowrap">${srh.id}</td>
								<td nowrap="nowrap">${srh.name}</td>
								<td nowrap="nowrap">${srh.yearStart} - ${sr.yearEnd}</td>
								<td nowrap="nowrap">${srh.receivedDate}</td>
								<td nowrap="nowrap">${srh.actionDate}</td>
								<td>
									<c:if test="${srh.isCompleted}">Completed</c:if>
									<c:if test="${not srh.isCompleted}">InComplete</c:if>
								</td>
								<td nowrap="nowrap">${srh.pendingReason}</td>
								<td nowrap="nowrap">${srh.updatedBy}</td>
								<td nowrap="nowrap">${srh.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>