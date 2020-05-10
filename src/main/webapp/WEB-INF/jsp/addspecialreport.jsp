<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<body>
	<div class="row" style="padding: 15px 0;">
		<div class="col-lg-12" style="font-size: 14px;">
			<form:form method="POST" action="/specialReport/add#active"
				modelAttribute="specialReport">
				<fieldset>
					<form:hidden class="form-control" name="id" path="id" value="" />

					<div class="row" style="padding: 10px;">
						<div class="col-sm-2">
							<label class="col-form-label">Report Name </label>
						</div>
						<div class="col-sm-4">
							<form:input type="text" class="form-control" name="name"
								path="name" required="required" />
						</div>
					</div>

					<div class="row" style="padding: 10px;">
						<div class="col-sm-2">
							<label class="col-form-label">Year </label>
						</div>
						<div class="col-sm-2">
							<form:input type="text" class="form-control" name="yearStart"
								path="yearStart" placeholder="XXXX - Year Start"
								pattern="[0-9]{4}" maxlength="4" onkeyup="numberOnly(this, 4)"
								required="required" />
						</div>
						<div class="col-sm-2">
							<form:input type="text" class="form-control" name="yearEnd"
								path="yearEnd" placeholder="XXXX - Year End" pattern="[0-9]{4}"
								maxlength="4" onkeyup="numberOnly(this, 4)" required="required" />
						</div>
					</div>
					<div class="row" style="padding: 10px;">
						<div class="col-sm-2">
							<label class="col-form-label">Received Date</label>
						</div>
						<div class="col-sm-4">
							<div id="dobdatepicker" class="input-group date"
								data-date-format="dd-mm-yyyy">
								<form:input class="form-control" type="text" readonly="readonly"
									name="receivedDate" path="receivedDate" />
								<span class="input-group-addon"><i
									class="fa fa-calendar-alt"></i></span>
							</div>
						</div>
					</div>
					<div class="row" style="padding: 10px;">
						<div class="col-sm-2">
							<label class="col-form-label">Action Date</label>
						</div>
						<div class="col-sm-4">
							<div id="dobdatepicker" class="input-group date"
								data-date-format="dd-mm-yyyy">
								<form:input class="form-control" type="text" readonly="readonly"
									name="actionDate" path="actionDate" />
								<span class="input-group-addon"><i
									class="fa fa-calendar-alt"></i></span>
							</div>
						</div>
					</div>
					<div class="row" style="padding: 10px;">
						<div class="col-sm-2">
							<label class="col-form-label" for="isActive">Is Completed? </label>
						</div>
						<div class="col-sm-4">
							<form:checkbox path="isCompleted" style="margin-top:10px;" />
						</div>
					</div>
					<div class="row" style="padding: 10px;">
						<div class="col-sm-2">
							<label class="col-form-label">Pending Reason</label>
						</div>
						<div class="col-sm-4">
							<form:input type="text" class="form-control" name="pendingReason"
								path="pendingReason" required="required" />
						</div>
					</div>
					<div class="row" style="padding: 10px;">
						<div class="col-sm-6">
							<button type="submit"
								class="btn btn-primary btn-action float-right">
								<i class="fa fa-save" aria-hidden="true"></i>&nbsp; Save Special
								Report
							</button>
							<button type="reset"
								class="btn btn-default btn-action float-right"
								style="margin-right: 15px;">
								<i class="fa fa-eraser" aria-hidden="true"></i>&nbsp; Clear
							</button>
							<span class="badge badge-success  float-right"
								style="margin: 2px 20px 2px 0px">${message }</span>
						</div>
					</div>
				</fieldset>
			</form:form>
		</div>
	</div>
</body>
</html>