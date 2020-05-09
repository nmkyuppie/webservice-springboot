<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${!empty familyList}">  
	<div class="row  justify-content-center" style="margin-top:35px;">
		<div class="col-lg-8" style="font-size: 14px;">
			<span class="badge badge-secondary" style="font-size: 14px;">Family Details</span>
			<div class="basicDetailsTable">
				<table class="table table-sm">
					<thead>
						<tr>
							<th width="5%"></th>
							<th scope="col" width="5%"></th>
							<th scope="col" nowrap="nowrap">Name</th>
							<th scope="col" nowrap="nowrap">Age</th>
							<th scope="col" nowrap="nowrap">Gender</th>
							<th scope="col" nowrap="nowrap">Date of Birth</th>
							<th scope="col" nowrap="nowrap">Relationship</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${familyList}" var="f">
							<tr>
								<td>
									<form action="/family?action=delete" method="POST">
										<input type="hidden" value="${f.familyId}" name="familyId">
										<button type="submit" class="btn btn-danger float-right" title="Delete Record">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td></td>
								<td>${f.familyName}</td>
								<td>${f.familyAge}</td>
								<td>${f.familyGender}</td>
								<td>${f.familyDob}</td>
								<td>${f.familyRelation}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</c:if>