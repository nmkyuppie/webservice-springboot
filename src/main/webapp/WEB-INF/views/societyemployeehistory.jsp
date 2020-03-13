<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/societyemployeehistory/list" method="GET">
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
							<th scope="col" width="14%">Name</th>
							<th scope="col" width="10%">Gender</th>
							<th scope="col" width="10%">Qualification</th>
							<th scope="col" width="10%">Date Of Birth</th>
							<th scope="col" width="10%">Cadre</th>
							<th scope="col" width="10%">Joining Date</th>
							<th scope="col" width="10%">Retirement Date</th>
							<th scope="col" width="10%">Mobile Number</th>
							<th scope="col" width="10%">Email Id</th>
							<th scope="col" width="10%">Address</th>
							<th scope="col" width="10%">PAN</th>
							<th scope="col" width="10%">Appointed By</th>
							<th scope="col" width="10%">Physically Challenged</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${societyEmployeeHistoryList}" var="seh">
							<tr>
								<td>${seh.id}</td>
								<td>${seh.gender}</td>
								<td>${seh.qualification}</td>
								<td>${seh.dob}</td>
								<td>${seh.cadre}</td>
								<td>${seh.joiningDate}</td>
								<td>${seh.retirementDate}</td>
								<td>${seh.mobileNumber}</td>
								<td>${seh.emailId}</td>
								<td>${seh.address}</td>
								<td>${seh.pan}</td>
								<td>${seh.appointedBy}</td>
								<td>
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
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>