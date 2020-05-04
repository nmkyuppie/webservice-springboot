<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/deputation/add#active" method="GET">
    			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-plus" aria-hidden="true"></i> Add Deputation</button>
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
							<th scope="col" nowrap="nowrap">Post</th>
							<th scope="col" nowrap="nowrap">Deputation Society Bank or Society</th>
							<th scope="col" nowrap="nowrap">Start Date</th>
							<th scope="col" nowrap="nowrap">End Date</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${deputationList}" var="dp">
							<tr>
								<td>
									<form action="/deputation/edit#active" method="POST">
										<input type="hidden" value="${dp.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Edit Details">
											<i class="fa fa-pencil" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/deputation/history#active" method="POST">
										<input type="hidden" value="${dp.id}" name="id">
										<button type="submit" class="btn btn-primary float-right" title="Show History">
											<i class="fa fa-clock-o" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td>
									<form action="/deputation/delete#active" method="POST">
										<input type="hidden" value="${dp.id}" name="id">
										<button type="submit" class="btn btn-danger float-right" title="Delete Record">
											<i class="fa fa-trash" aria-hidden="true"></i>
										</button>
									</form>
								</td>
								<td></td>
								<td nowrap="nowrap">${dp.id}</td>
								<td nowrap="nowrap">${dp.employee}</td>
								<td nowrap="nowrap">${dp.post}</td>
								<td nowrap="nowrap">${dp.bankSociety}</td>
								<td nowrap="nowrap">${dp.startDate}</td>
								<td nowrap="nowrap">${dp.endDate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>