<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/rti/add#active" method="GET">
    			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-plus" aria-hidden="true"></i> Add RTI</button>
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
							<th scope="col" nowrap="nowrap">Petitioner Name</th>
							<th scope="col" nowrap="nowrap">Address</th>
							<th scope="col" nowrap="nowrap">Subject</th>
							<th scope="col" nowrap="nowrap">Description</th>
							<th scope="col" nowrap="nowrap">Received Date</th>
							<th scope="col" nowrap="nowrap">Completion Date</th>
							<th scope="col" nowrap="nowrap">Report Date</th>
							<th scope="col" nowrap="nowrap">Pending Reason</th>
							<th scope="col" nowrap="nowrap">Documents</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${rtiList}" var="rti">
							<tr>
								<td>
									<form action="/rti/edit#active" method="POST">
										<input type="hidden" value="${rti.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Edit Details">
											<i class="fa fa-pen" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/rti/history#active" method="POST">
										<input type="hidden" value="${rti.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Show History">
											<i class="fa fa-history" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/rti/delete#active" method="POST">
										<input type="hidden" value="${rti.id}" name="id">
										<button type="submit" class="btn btn-danger float-right" title="Delete Record">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td></td>
								<td nowrap="nowrap">${rti.id}</td>
								<td nowrap="nowrap">${rti.petitionerName}</td>
								<td nowrap="nowrap">${rti.address}</td>
								<td nowrap="nowrap">${rti.subject}</td>
								<td nowrap="nowrap">${rti.description}</td>
								<td nowrap="nowrap">${rti.receivedDate}</td>
								<td nowrap="nowrap">${rti.completionDate}</td>
								<td nowrap="nowrap">${rti.reportDate}</td>
								<td nowrap="nowrap">${rti.pendingReason}</td>
								<td style="display:flex;">
									<c:forEach var="d" items="${rti.documents}">
										<c:if test="${d.isActive == true}">
											<span class='badge badge-light' style='margin-right:15px;'>${d.fileName}</span> &nbsp;&nbsp;
										</c:if>
									</c:forEach>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>