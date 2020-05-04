<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/societyEmployee/add#active" method="GET">
    			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-plus" aria-hidden="true"></i> Add Employee</button>
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
							<th scope="col" nowrap="nowrap">Name</th>
							<th scope="col" nowrap="nowrap">Gender</th>
							<th scope="col" nowrap="nowrap">Qualification</th>
							<th scope="col" nowrap="nowrap">Date Of Birth</th>
							<th scope="col" nowrap="nowrap">Cadre</th>
							<th scope="col" nowrap="nowrap">Joining Date</th>
							<th scope="col" nowrap="nowrap">Retirement Date</th>
							<th scope="col" nowrap="nowrap">Mobile Number</th>
							<th scope="col" nowrap="nowrap">Email Id</th>
							<th scope="col" nowrap="nowrap">Address</th>
							<th scope="col" nowrap="nowrap">PAN</th>
							<th scope="col" nowrap="nowrap">Appointed By</th>
							<th scope="col" nowrap="nowrap">Physically Challenged</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${societyEmployeeList}" var="se">
							<tr>
								<td>
									<form action="/societyEmployee/edit#active" method="POST">
										<input type="hidden" value="${se.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Edit Details">
											<i class="fa fa-pencil" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/societyEmployee/history#active" method="POST">
										<input type="hidden" value="${se.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Show History">
											<i class="fa fa-clock-o" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/societyEmployee/delete#active" method="POST">
										<input type="hidden" value="${se.id}" name="id">
										<button type="submit" class="btn btn-danger float-right" title="Delete Record">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td></td>
								<td nowrap="nowrap">${se.id}</td>
								<td nowrap="nowrap">${se.name}</td>
								<td nowrap="nowrap">${se.gender}</td>
								<td nowrap="nowrap">${se.qualification}</td>
								<td nowrap="nowrap">${se.dob}</td>
								<td nowrap="nowrap">${se.cadre}</td>
								<td nowrap="nowrap">${se.joiningDate}</td>
								<td nowrap="nowrap">${se.retirementDate}</td>
								<td nowrap="nowrap">${se.mobileNumber}</td>
								<td nowrap="nowrap">${se.emailId}</td>
								<td nowrap="nowrap">${se.address}</td>
								<td nowrap="nowrap">${se.pan}</td>
								<td nowrap="nowrap">${se.appointedBy}</td>
								<td>
									<c:if test="${se.isDisabledPerson}">Yes</c:if>
									<c:if test="${not se.isDisabledPerson}">No</c:if>
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