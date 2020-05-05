<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/stockVerification/list#active" method="GET">
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
							<th width="5%"></th>
							<th width="5%"></th>
							<th width="5%"></th>
							<th width="2%"></th>
							<th scope="col" nowrap="nowrap">#</th>
							<th scope="col" nowrap="nowrap">Date</th>
							<th scope="col" nowrap="nowrap">Defects</th>
							<th scope="col" nowrap="nowrap">Officer Name</th>
							<th scope="col" nowrap="nowrap">Fine Amount</th>
							<th scope="col" nowrap="nowrap">Fine Remittance</th>
							<th scope="col" nowrap="nowrap">Fine Date</th>
							<th scope="col" nowrap="nowrap">Fine Challan Number</th>
							<th scope="col" nowrap="nowrap">Updated By</th>
							<th scope="col" nowrap="nowrap">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${stockVerificationHistoryList}" var="svh">
							<tr>
								<td>
									<form action="/stockVerification/edit#active" method="POST">
										<input type="hidden" value="${svh.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Edit Details">
											<i class="fa fa-pen" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/stockVerification/history#active" method="POST">
										<input type="hidden" value="${svh.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Show History">
											<i class="fa fa-history" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/stockVerification/delete#active" method="POST">
										<input type="hidden" value="${svh.id}" name="id">
										<button type="submit" class="btn btn-danger float-right" title="Delete Record">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td nowrap="nowrap"></td>
								<td nowrap="nowrap">${svh.id}</td>
								<td nowrap="nowrap">${svh.date}</td>
								<td nowrap="nowrap">${svh.defects}</td>
								<td nowrap="nowrap">${svh.officerName}</td>
								<td nowrap="nowrap">${svh.fineAmount}</td>
								<td nowrap="nowrap">${svh.fineRemittance}</td>
								<td nowrap="nowrap">${svh.fineDate}</td>
								<td nowrap="nowrap">${svh.fineChallanNumber}</td>
								<td nowrap="nowrap">${svh.updatedBy}</td>
								<td nowrap="nowrap">${svh.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>