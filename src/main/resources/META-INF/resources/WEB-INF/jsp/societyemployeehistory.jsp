<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/societyEmployee/list#active" method="GET">
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
							<th scope="col" nowrap="nowrap">Updated By</th>
							<th scope="col" nowrap="nowrap">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${societyEmployeeHistoryList}" var="seh">
							<tr>
								<td nowrap="nowrap">${seh.id}</td>
								<td nowrap="nowrap">${seh.name}</td>
								<td nowrap="nowrap">${seh.gender}</td>
								<td nowrap="nowrap">${seh.qualification}</td>
								<td nowrap="nowrap">${seh.dob}</td>
								<td nowrap="nowrap">${seh.cadre}</td>
								<td nowrap="nowrap">${seh.joiningDate}</td>
								<td nowrap="nowrap">${seh.retirementDate}</td>
								<td nowrap="nowrap">${seh.mobileNumber}</td>
								<td nowrap="nowrap">${seh.emailId}</td>
								<td nowrap="nowrap">${seh.address}</td>
								<td nowrap="nowrap">${seh.pan}</td>
								<td nowrap="nowrap">${seh.appointedBy}</td>
								<td nowrap="nowrap">
									<c:choose>
							         <c:when test = "${seh.isDisabledPerson == true}">
							            Yes
							         </c:when>
							         
							         <c:when test = "${seh.isDisabledPerson == false}">
							            No
							         </c:when>
							         <c:otherwise>
							            No
							         </c:otherwise>
							      </c:choose>
								</td>
								<td nowrap="nowrap">${seh.updatedBy}</td>
								<td nowrap="nowrap">${seh.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>