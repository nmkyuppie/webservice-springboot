<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <div class="row justify-content-end" style="margin: 15px -15px;">
    	<div class="col offset-md-6">
    		<form action="/courtcase/list#active" method="GET">
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
							<th scope="col" nowrap="nowrap">Petitioner</th>
							<th scope="col" nowrap="nowrap">Respondent</th>
							<th scope="col" nowrap="nowrap">Number of Hearing</th>
							<th scope="col" nowrap="nowrap">Affidavit Filing Date</th>
							<th scope="col" nowrap="nowrap">Judgment Date</th>
							<th scope="col" nowrap="nowrap">Current Status</th>
							<th scope="col" nowrap="nowrap">Document</th>
							<th scope="col" nowrap="nowrap">Updated By</th>
							<th scope="col" nowrap="nowrap">Updated On</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${courtCaseHistoryList}" var="cch">
							<tr>
								<td nowrap="nowrap">${cch.id}</td>
								<td nowrap="nowrap">${cch.petitioner}</td>
								<td nowrap="nowrap">${cch.respondent}</td>
								<td nowrap="nowrap">${cch.hearingNumber}</td>
								<td nowrap="nowrap">${cch.affidavitFDate}</td>
								<td nowrap="nowrap">${cch.judgementDate}</td>
								<td nowrap="nowrap">${cch.currentStatus}</td>
								<td nowrap="nowrap">${cch.fileNames}</td>
								<td nowrap="nowrap">${cch.updatedBy}</td>
								<td nowrap="nowrap">${cch.updatedOn}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>