<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/boardDetails/list#active" method="GET">
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
							<th scope="col" nowrap="nowrap">Position</th>
							<th scope="col" nowrap="nowrap">Elected Year</th>
							<th scope="col" nowrap="nowrap">Phone Number</th>
							<th scope="col" nowrap="nowrap">Address</th>
							<th scope="col" nowrap="nowrap">Community</th>
							<th scope="col" nowrap="nowrap">Aadhaar</th>
							<th scope="col" nowrap="nowrap">Gender</th>
							<th scope="col" nowrap="nowrap">Is Active?</th>
							<th scope="col" nowrap="nowrap">Updated By</th>
							<th scope="col" nowrap="nowrap">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${boardDetailsHistoryList}" var="bdh">
							<tr>
								<td nowrap="nowrap">${bdh.id}</td>
								<td nowrap="nowrap">${bdh.name}</td>
								<td nowrap="nowrap">${bdh.position}</td>
								<td nowrap="nowrap">${bdh.electedYearFrom} - ${bdh.electedYearTo}</td>
								<td nowrap="nowrap">${bdh.phoneNumber}</td>
								<td nowrap="nowrap">${bdh.address}</td>
								<td nowrap="nowrap">${bdh.community}</td>
								<td nowrap="nowrap">${bdh.aadhaar}</td>
								<td nowrap="nowrap">${bdh.gender}</td>
								<td>
									<c:if test="${bdh.isActive}">Active</c:if>
									<c:if test="${not bdh.isActive}">Inactive</c:if>
								</td>
								<td>${bdh.updatedBy}</td>
								<td>${bdh.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>