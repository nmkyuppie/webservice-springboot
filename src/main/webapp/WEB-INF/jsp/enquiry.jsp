<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/enquiry/add#active" method="GET">
    			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-plus" aria-hidden="true"></i> Add Enquiry</button>
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
							<th scope="col" nowrap="nowrap">Section</th>
							<th scope="col" nowrap="nowrap">Enquiry Date</th>
							<th scope="col" nowrap="nowrap">Completion Date</th>
							<th scope="col" nowrap="nowrap">Current Status</th>
							<th scope="col" nowrap="nowrap">Officer Name</th>
							<th scope="col" nowrap="nowrap">Report Date</th>
							<th scope="col">Result</th>
							<th scope="col">Action</th>
							<th scope="col" nowrap="nowrap">Documents</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${enquiryList}" var="e">
							<tr>
								<td>
									<form action="/enquiry/edit#active" method="POST">
										<input type="hidden" value="${e.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Edit Details">
											<i class="fa fa-pen" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/enquiry/history#active" method="POST">
										<input type="hidden" value="${e.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Show History">
											<i class="fa fa-history" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/enquiry/delete#active" method="POST">
										<input type="hidden" value="${e.id}" name="id">
										<button type="submit" class="btn btn-danger float-right" title="Delete Record">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td></td>
								<td nowrap="nowrap">${e.id}</td>
								<td nowrap="nowrap">${e.section}</td>
								<td nowrap="nowrap">${e.enquiryDate}</td>
								<td nowrap="nowrap">${e.completionDate}</td>
								<td nowrap="nowrap">${e.currentStatus}</td>
								<td nowrap="nowrap">${e.officerName}</td>
								<td nowrap="nowrap">${e.reportDate}</td>
								<td nowrap="nowrap">${e.resultText}</td>
								<td nowrap="nowrap">${e.actionText}</td>
								<td style="display:flex;">
									<c:forEach var="d" items="${e.documents}">
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