<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
  
    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/bonusDetails/list#active" method="GET">
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
							<th scope="col" nowrap="nowrap">Name</th>
							<th scope="col" nowrap="nowrap">Amount</th>
							<th scope="col" nowrap="nowrap">Bonus Date</th>
							<th scope="col" nowrap="nowrap">Approved By</th>
							<th scope="col" nowrap="nowrap">Updated By</th>
							<th scope="col" nowrap="nowrap">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${bonusDetailsHistoryList}" var="bd">
							<tr>
								<td>
									<form action="/bonusDetails/edit#active" method="POST">
										<input type="hidden" value="${bd.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Edit Details">
											<i class="fa fa-pencil" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/bonusDetails/history#active" method="POST">
										<input type="hidden" value="${bd.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Show History">
											<i class="fa fa-clock-o" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/bonusDetails/delete#active" method="POST">
										<input type="hidden" value="${bd.id}" name="id">
										<button type="submit" class="btn btn-danger float-right" title="Delete Record">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td></td>
								<td nowrap="nowrap">${bd.id}</td>
								<td nowrap="nowrap">${bd.employee}</td>
								<td nowrap="nowrap">${bd.amount}</td>
								<td nowrap="nowrap">${bd.date}</td>
								<td nowrap="nowrap">${bd.approvedBy}</td>
								<td nowrap="nowrap">${bd.updatedBy}</td>
								<td nowrap="nowrap">${bd.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>