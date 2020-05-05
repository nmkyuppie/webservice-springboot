<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/promotionDetails/list#active" method="GET">
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
							<th scope="col" nowrap="nowrap">Employee Name</th>
							<th scope="col" nowrap="nowrap">Promoted To</th>
							<th scope="col" nowrap="nowrap">Current Cadre</th>
							<th scope="col" nowrap="nowrap">Promoted On</th>
							<th scope="col" nowrap="nowrap">Approved By</th>
							<th scope="col" nowrap="nowrap">Type</th>
							<th scope="col" nowrap="nowrap">Updated By</th>
							<th scope="col" nowrap="nowrap">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${promotionDetailsHistoryList}" var="pdh">
							<tr>
								<td nowrap="nowrap">${pdh.id}</td>
								<td nowrap="nowrap">${pdh.name}</td>
								<td nowrap="nowrap">${pdh.promotedTo}</td>
								<td nowrap="nowrap">${pdh.currentCadre}</td>
								<td nowrap="nowrap">${pdh.promotedOn}</td>
								<td nowrap="nowrap">${pdh.approvedBy}</td>
								<td nowrap="nowrap">
									<c:if test="${pdh.promotedOrDePromoted}">Promoted</c:if>
									<c:if test="${not pdh.promotedOrDePromoted}">Depromoted</c:if>
								</td>
								<td nowrap="nowrap">${pdh.updatedBy}</td>
								<td nowrap="nowrap">${pdh.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>