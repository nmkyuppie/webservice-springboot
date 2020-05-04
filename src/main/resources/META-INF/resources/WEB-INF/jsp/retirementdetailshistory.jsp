<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/retirementDetails/list#active" method="GET">
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
							<th scope="col" nowrap="nowrap">Retirement Date</th>
							<th scope="col" nowrap="nowrap">Joining Cadre</th>
							<th scope="col" nowrap="nowrap">Retiring Cadre</th>
							<th scope="col" nowrap="nowrap">Benefits To Be Settled</th>
							<th scope="col" nowrap="nowrap">Settled Upto Month</th>
							<th scope="col" nowrap="nowrap">Balance Amount</th>
							<th scope="col" nowrap="nowrap">Reason For Pending</th>
							<th scope="col" nowrap="nowrap">Type Of Benefit</th>
							<th scope="col" nowrap="nowrap">Updated By</th>
							<th scope="col" nowrap="nowrap">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${retirementDetailsHistoryList}" var="rdh">
							<tr>
								<td nowrap="nowrap">${rdh.id}</td>
								<td nowrap="nowrap">${rdh.employeeId}</td>
								<td nowrap="nowrap">${rdh.retirementDate}</td>
								<td nowrap="nowrap">${rdh.joiningCadre}</td>
								<td nowrap="nowrap">${rdh.retiringCadre}</td>
								<td nowrap="nowrap">${rdh.benefitToBeSettled}</td>
								<td nowrap="nowrap">${rdh.settledUptoMonth}</td>
								<td nowrap="nowrap">${rdh.balanceAmount}</td>
								<td nowrap="nowrap">${rdh.reasonForPending}</td>
								<td nowrap="nowrap">${rdh.typeOfBenefit}</td>
								<td nowrap="nowrap">${rdh.updatedBy}</td>
								<td nowrap="nowrap">${rdh.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
					
				</table>
			</div>
		</div>
	</div>
</body>
</html>