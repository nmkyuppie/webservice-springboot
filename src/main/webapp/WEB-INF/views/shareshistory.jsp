<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/shares/list" method="GET">
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
							<th scope="col" width="10%">Shares Id</th>
							<th scope="col" width="12%">Type</th>
							<th scope="col" width="10%">Year</th>
							<th scope="col" width="15%">Total Amount</th>
							<th scope="col" width="12%">Updated By</th>
							<th scope="col" width="24%">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${sharesHistoryList}" var="shh">
							<tr>
								<td>${shh.id}</td>
								<td>${shh.sharesId}</td>
								<td>${shh.type}</td>
								<td>${shh.yearStart} - ${shh.yearEnd}</td>
								<td>${shh.amount}</td>
								<td>${shh.updatedBy}</td>
								<td>${shh.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>