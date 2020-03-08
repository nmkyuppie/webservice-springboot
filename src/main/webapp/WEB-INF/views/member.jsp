<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/member/add" method="GET">
    			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-plus" aria-hidden="true"></i> Add Member</button>
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
							<th scope="col" width="5%">#</th>
							<th scope="col" width="14%">Member Class</th>
							<th scope="col" width="14%">Year</th>
							<th scope="col" width="14%">Member Count</th>
							<th scope="col" width="40%">Total Amount</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${memberList}" var="m">
							<tr>
								<td>
									<form action="/member/edit" method="POST">
										<input type="hidden" value="${m.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Edit Details">
											<i class="fa fa-pencil" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/member/history" method="POST">
										<input type="hidden" value="${m.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Show History">
											<i class="fa fa-clock-o" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/member/history" method="POST">
										<input type="hidden" value="${m.id}" name="id">
										<button type="submit" class="btn btn-danger float-right" title="Delete Record">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td></td>
								<td>${m.id}</td>
								<td>${m.memberClass}</td>
								<td>${m.yearStart} - ${m.yearEnd}</td>
								<td>${m.count}</td>
								<td>${m.amount}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>