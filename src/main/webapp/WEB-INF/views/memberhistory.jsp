<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/member/list" method="GET">
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
							<th scope="col" width="5%">#</th>
							<th scope="col" width="10%">Member Id</th>
							<th scope="col" width="12%">Member Class</th>
							<th scope="col" width="10%">Year</th>
							<th scope="col" width="12%">Member Count</th>
							<th scope="col" width="15%">Total Amount</th>
							<th scope="col" width="12%">Updated By</th>
							<th scope="col" width="24%">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${memberHistoryList}" var="mh">
							<tr>
								<td>${mh.id}</td>
								<td>${mh.memberId}</td>
								<td>${mh.memberClass}</td>
								<td>${mh.yearStart} - ${mh.yearEnd}</td>
								<td>${mh.count}</td>
								<td>${mh.amount}</td>
								<td>${mh.updatedBy}</td>
								<td>${mh.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>