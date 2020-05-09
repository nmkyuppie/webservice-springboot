<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/auditDetails/list#active" method="GET">
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
							<th scope="col" nowrap="nowrap">Updated By</th>
							<th scope="col" nowrap="nowrap">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${auditDetailsHistoryList}" var="adh">
							<tr>
								<td nowrap="nowrap">${adh.id}</td>
								<td nowrap="nowrap">${adh.yearStart} - ${adh.yearEnd}</td>
								<td nowrap="nowrap">${adh.profit}</td>
								<td nowrap="nowrap">${adh.loss}</td>
								<td nowrap="nowrap">${adh.netProfit}</td>
								<td nowrap="nowrap">${adh.cumulativeLoss}</td>
								<td nowrap="nowrap">${adh.imbalance}</td>
								<td nowrap="nowrap">${adh.coverDeficit}</td>
								<td nowrap="nowrap">${adh.shareCapital}</td>
								<td nowrap="nowrap">${adh.workingCapital}</td>
								<td nowrap="nowrap">${adh.loanAdvances}</td>
								<td nowrap="nowrap">${adh.loanOutstanding}</td>
								<td nowrap="nowrap">${adh.loanOverdue}</td>
								<td nowrap="nowrap">${adh.statutoryReserves}</td>
								<td nowrap="nowrap">${adh.otherReserves}</td>
								<td nowrap="nowrap">${adh.borrowings}</td>
								<td nowrap="nowrap">${adh.updatedBy}</td>
								<td nowrap="nowrap">${adh.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
					
				</table>
			</div>
		</div>
	</div>
</body>
</html>