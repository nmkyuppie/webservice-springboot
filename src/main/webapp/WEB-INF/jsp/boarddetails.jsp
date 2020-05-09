<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/boardDetails/add#active" method="GET">
    			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-plus" aria-hidden="true"></i> Add Board Detail</button>
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
							<th scope="col" nowrap="nowrap">Position</th>
							<th scope="col" nowrap="nowrap">Elected Year</th>
							<th scope="col" nowrap="nowrap">Phone Number</th>
							<th scope="col" nowrap="nowrap">Address</th>
							<th scope="col" nowrap="nowrap">Community</th>
							<th scope="col" nowrap="nowrap">Aadhaar</th>
							<th scope="col" nowrap="nowrap">Gender</th>
							<th scope="col" nowrap="nowrap">Is Active?</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${boardDetailsList}" var="bd">
							<tr>
								<td>
									<form action="/boardDetails/edit#active" method="POST">
										<input type="hidden" value="${bd.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Edit Details">
											<i class="fa fa-pen" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/boardDetails/history#active" method="POST">
										<input type="hidden" value="${bd.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Show History">
											<i class="fa fa-history" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/boardDetails/delete#active" method="POST">
										<input type="hidden" value="${bd.id}" name="id">
										<button type="submit" class="btn btn-danger float-right" title="Delete Record">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td></td>
								<td nowrap="nowrap">${bd.id}</td>
								<td nowrap="nowrap">${bd.name}</td>
								<td nowrap="nowrap">${bd.position}</td>
								<td nowrap="nowrap">${bd.electedYearFrom} - ${bd.electedYearTo}</td>
								<td nowrap="nowrap">${bd.phoneNumber}</td>
								<td nowrap="nowrap">${bd.address}</td>
								<td nowrap="nowrap">${bd.community}</td>
								<td nowrap="nowrap">${bd.aadhaar}</td>
								<td nowrap="nowrap">${bd.gender}</td>
								<td>
									<c:if test="${bd.isActive}">Active</c:if>
									<c:if test="${not bd.isActive}">Inactive</c:if>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>