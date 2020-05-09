<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/deputation/list#active" method="GET">
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
							<th scope="col" nowrap="nowrap">Name</th>
							<th scope="col" nowrap="nowrap">Post</th>
							<th scope="col" nowrap="nowrap">Deputation Society Bank or Society</th>
							<th scope="col" nowrap="nowrap">Start Date</th>
							<th scope="col" nowrap="nowrap">End Date</th>
							<th scope="col" nowrap="nowrap">Updated By</th>
							<th scope="col" nowrap="nowrap">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${deputationHistoryList}" var="dph">
							<tr>
								<td nowrap="nowrap">${dph.id}</td>
								<td nowrap="nowrap">${dph.employee}</td>
								<td nowrap="nowrap">${dph.post}</td>
								<td nowrap="nowrap">${dph.bankSociety}</td>
								<td nowrap="nowrap">${dph.startDate}</td>
								<td nowrap="nowrap">${dph.endDate}</td>
								<td nowrap="nowrap">${dph.updatedBy}</td>
								<td nowrap="nowrap">${dph.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>