<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/promotionDetails/add#active" method="GET">
    			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-plus" aria-hidden="true"></i> Add Promotion Detail</button>
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
							<th scope="col" nowrap="nowrap">Employee Name</th>
							<th scope="col" nowrap="nowrap">Promoted To</th>
							<th scope="col" nowrap="nowrap">Current Cadre</th>
							<th scope="col" nowrap="nowrap">Promoted On</th>
							<th scope="col" nowrap="nowrap">Approved By</th>
							<th scope="col" nowrap="nowrap">Type</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${promotionDetailsList}" var="pd">
							<tr>
								<td>
									<form action="/promotionDetails/edit#active" method="POST">
										<input type="hidden" value="${pd.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Edit Details">
											<i class="fa fa-pencil" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/promotionDetails/history#active" method="POST">
										<input type="hidden" value="${pd.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Show History">
											<i class="fa fa-clock-o" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/promotionDetails/delete#active" method="POST">
										<input type="hidden" value="${pd.id}" name="id">
										<button type="submit" class="btn btn-danger float-right" title="Delete Record">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td></td>
								<td>${pd.id}</td>
								<td>${pd.name}</td>
								<td>${pd.promotedTo}</td>
								<td>${pd.currentCadre}</td>
								<td>${pd.promotedOn}</td>
								<td>${pd.approvedBy}</td>
								<td>
									<c:if test="${pd.promotedOrDePromoted}">Promoted</c:if>
									<c:if test="${not pd.promotedOrDePromoted}">Depromoted</c:if>
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