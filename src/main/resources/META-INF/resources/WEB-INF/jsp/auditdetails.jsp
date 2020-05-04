<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/auditDetails/add#active" method="GET">
    			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-plus" aria-hidden="true"></i> Add Audit Detail</button>
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
							<th scope="col" nowrap="nowrap">Year</th>
							<th scope="col" nowrap="nowrap">Profit</th>
							<th scope="col" nowrap="nowrap">Loss</th>
							<th scope="col" nowrap="nowrap">Net Profit</th>
							<th scope="col" nowrap="nowrap">Cumulative Loss</th>
							<th scope="col" nowrap="nowrap">Imbalance</th>
							<th scope="col" nowrap="nowrap">Cover Deficit</th>
							<th scope="col" nowrap="nowrap">Share Capital</th>
							<th scope="col" nowrap="nowrap">Working Capital</th>
							<th scope="col" nowrap="nowrap">Loan Advances</th>
							<th scope="col" nowrap="nowrap">Loan Outstanding</th>
							<th scope="col" nowrap="nowrap">Loan Overdue</th>
							<th scope="col" nowrap="nowrap">Statutory Reserves</th>
							<th scope="col" nowrap="nowrap">Other Reserves</th>
							<th scope="col" nowrap="nowrap">Borrowings</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${auditDetailsList}" var="ad">
							<tr>
								<td>
									<form action="/auditDetails/edit#active" method="POST">
										<input type="hidden" value="${ad.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Edit Details">
											<i class="fa fa-pencil" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/auditDetails/history#active" method="POST">
										<input type="hidden" value="${ad.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Show History">
											<i class="fa fa-clock-o" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/auditDetails/delete#active" method="POST">
										<input type="hidden" value="${ad.id}" name="id">
										<button type="submit" class="btn btn-danger float-right" title="Delete Record">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td></td>
								<td nowrap="nowrap">${ad.id}</td>
								<td nowrap="nowrap">${ad.yearStart} - ${ad.yearEnd}</td>
								<td nowrap="nowrap">${ad.profit}</td>
								<td nowrap="nowrap">${ad.loss}</td>
								<td nowrap="nowrap">${ad.netProfit}</td>
								<td nowrap="nowrap">${ad.cumulativeLoss}</td>
								<td nowrap="nowrap">${ad.imbalance}</td>
								<td nowrap="nowrap">${ad.coverDeficit}</td>
								<td nowrap="nowrap">${ad.shareCapital}</td>
								<td nowrap="nowrap">${ad.workingCapital}</td>
								<td nowrap="nowrap">${ad.loanAdvances}</td>
								<td nowrap="nowrap">${ad.loanOutstanding}</td>
								<td nowrap="nowrap">${ad.loanOverdue}</td>
								<td nowrap="nowrap">${ad.statutoryReserves}</td>
								<td nowrap="nowrap">${ad.otherReserves}</td>
								<td nowrap="nowrap">${ad.borrowings}</td>
							</tr>
						</c:forEach>
					</tbody>
					
				</table>
			</div>
		</div>
	</div>
</body>
</html>