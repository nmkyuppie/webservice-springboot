<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/specialReport/add#active" method="GET">
    			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-plus" aria-hidden="true"></i> Add Special Report</button>
    		</form>
    	</div>
    </div>
	<div class="row">
		<div class="col-lg-12" style="font-size: 14px;">
			<div class="basicDetailsTable">
				<table class="table table-sm">
					<thead>
						<tr>
							<th width="5%"></th>
							<th width="5%"></th>
							<th width="5%"></th>
							<th width="2%"></th>
							<th scope="col" nowrap="nowrap">#</th>
							<th scope="col" nowrap="nowrap">Report Name</th>
							<th scope="col" nowrap="nowrap">Year</th>
							<th scope="col" nowrap="nowrap">Received Date</th>
							<th scope="col" nowrap="nowrap">Action Date</th>
							<th scope="col" nowrap="nowrap">Is Completed?</th>
							<th scope="col" nowrap="nowrap">Pending Reason</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${specialReportList}" var="sr">
							<tr>
								<td>
									<form action="/specialReport/edit#active" method="POST">
										<input type="hidden" value="${sr.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Edit Details">
											<i class="fa fa-pen" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/specialReport/history#active" method="POST">
										<input type="hidden" value="${sr.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Show History">
											<i class="fa fa-history" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/specialReport/delete#active" method="POST">
										<input type="hidden" value="${sr.id}" name="id">
										<button type="submit" class="btn btn-danger float-right" title="Delete Record">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td></td>
								<td nowrap="nowrap">${sr.id}</td>
								<td nowrap="nowrap">${sr.name}</td>
								<td nowrap="nowrap">${sr.yearStart} - ${sr.yearEnd}</td>
								<td nowrap="nowrap">${sr.receivedDate}</td>
								<td nowrap="nowrap">${sr.actionDate}</td>
								<td>
									<c:if test="${sr.isCompleted}">Completed</c:if>
									<c:if test="${not sr.isCompleted}">InComplete</c:if>
								</td>
								<td nowrap="nowrap">${sr.pendingReason}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>