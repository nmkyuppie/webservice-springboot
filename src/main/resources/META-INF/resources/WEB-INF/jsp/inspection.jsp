<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/inspection/add#active" method="GET">
    			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-plus" aria-hidden="true"></i> Add Inspection</button>
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
							<th scope="col" nowrap="nowrap">Date of Inspection</th>
							<th scope="col" nowrap="nowrap">Inspector Name</th>
							<th scope="col" nowrap="nowrap">Inspector Cadre</th>
							<th scope="col" nowrap="nowrap">Reason for Visit</th>
							<th scope="col" nowrap="nowrap">Action Taken</th>
							<th scope="col" nowrap="nowrap">Report</th>
							<th scope="col" nowrap="nowrap">Document</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${inspectionList}" var="i">
							<tr>
								<td>
									<form action="/inspection/edit#active" method="POST">
										<input type="hidden" value="${i.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Edit Details">
											<i class="fa fa-pencil" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/inspection/history#active" method="POST">
										<input type="hidden" value="${i.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Show History">
											<i class="fa fa-clock-o" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/inspection/delete#active" method="POST">
										<input type="hidden" value="${i.id}" name="id">
										<button type="submit" class="btn btn-danger float-right" title="Delete Record">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td></td>
								<td nowrap="nowrap">${i.id}</td>
								<td nowrap="nowrap">${i.date}</td>
								<td nowrap="nowrap">${i.inspectorName}</td>
								<td nowrap="nowrap">${i.inspector}</td>
								<td nowrap="nowrap">${i.reason}</td>
								<td nowrap="nowrap">${i.actionTaken}</td>
								<td nowrap="nowrap">${i.report}</td>
								<td style="display:flex;">
									<c:forEach var="d" items="${i.documents}">
										<c:if test="${d.isActive == true}">
											<span class='badge badge-light' style='margin-right:15px;'>${d.fileName}</span> &nbsp;&nbsp;
										</c:if>
									</c:forEach>
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