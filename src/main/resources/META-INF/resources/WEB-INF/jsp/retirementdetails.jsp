<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/retirementDetails/add#active" method="GET">
    			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-plus" aria-hidden="true"></i> Add Retirement Detail</button>
    		</form>
    	</div>
    </div>
	<div class="row">
		<div class="col-lg-12" style="font-size: 14px;">
			<div class="basicDetailsTable">
				<table class="table table-sm">
					<thead>
						<tr>
							<th width="2%"></th>
							<th width="2%"></th>
							<th width="2%"></th>
							<th width="1%"></th>
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
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${retirementDetailsList}" var="rd">
							<tr>
								<td>
									<form action="/retirementDetails/edit#active" method="POST">
										<input type="hidden" value="${rd.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Edit Details">
											<i class="fa fa-pencil" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/retirementDetails/history#active" method="POST">
										<input type="hidden" value="${rd.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Show History">
											<i class="fa fa-clock-o" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/retirementDetails/delete#active" method="POST">
										<input type="hidden" value="${rd.id}" name="id">
										<button type="submit" class="btn btn-danger float-right" title="Delete Record">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td></td>
								<td nowrap="nowrap">${rd.id}</td>
								<td nowrap="nowrap">${rd.employeeId}</td>
								<td nowrap="nowrap">${rd.retirementDate}</td>
								<td nowrap="nowrap">${rd.joiningCadre}</td>
								<td nowrap="nowrap">${rd.retiringCadre}</td>
								<td nowrap="nowrap">${rd.benefitToBeSettled}</td>
								<td nowrap="nowrap">${rd.settledUptoMonth}</td>
								<td nowrap="nowrap">${rd.balanceAmount}</td>
								<td nowrap="nowrap">${rd.reasonForPending}</td>
								<td nowrap="nowrap">${rd.typeOfBenefit}</td>
							</tr>
						</c:forEach>
					</tbody>
					
				</table>
			</div>
		</div>
	</div>
</body>
</html>