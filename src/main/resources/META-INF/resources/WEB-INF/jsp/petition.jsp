<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/petition/add#active" method="GET">
    			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-plus" aria-hidden="true"></i> Add Petition</button>
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
							<th scope="col" nowrap="nowrap">Received Date</th>
							<th scope="col" nowrap="nowrap">Completion Date</th>
							<th scope="col" nowrap="nowrap">Current Status</th>
							<th scope="col" nowrap="nowrap">Action Taken</th>
							<th scope="col" nowrap="nowrap">Documents</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${petitionList}" var="p">
							<tr>
								<td>
									<form action="/petition/edit#active" method="POST">
										<input type="hidden" value="${p.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Edit Details">
											<i class="fa fa-pencil" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/petition/history#active" method="POST">
										<input type="hidden" value="${p.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Show History">
											<i class="fa fa-clock-o" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/petition/delete#active" method="POST">
										<input type="hidden" value="${p.id}" name="id">
										<button type="submit" class="btn btn-danger float-right" title="Delete Record">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td></td>
								<td>${p.id}</td>
								<td>${p.againstEmployee}</td>
								<td>${p.receivedDate}</td>
								<td>${p.completionDate}</td>
								<td>${p.status}</td>
								<td>${p.actionTaken}</td>
								<td style="display:flex;">
									<c:forEach var="d" items="${p.documents}">
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