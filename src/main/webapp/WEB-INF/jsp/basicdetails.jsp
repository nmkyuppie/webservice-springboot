<%@page import="com.cas.business.entity.Society"%>
<%@page import="com.cas.business.entity.Circle"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../static/css/bootstrap.css">
    <link rel="stylesheet" href="../static/css/datepicker.css">
    <link rel="stylesheet" href="../static/css/styles.css">

    <title>Society - Core Banking Solution</title>
  </head>
 <body>
        <%@ include file = "header.jsp" %>
		<% 
		Society society = (Society)session.getAttribute("societyInfo");
		String societyName = society.getName();
		String societyRegNumber = society.getRegistrationNumber();
		%>
		
		<div class="container-fluid" style="margin-top:40px;">
            <div class="row justify-content-end" style="margin: 0 -15px;">
            	<div class="col-md-6" style="padding:0">
            		<span class="bigBadge badge">
            			<i class="fa fa-building" aria-hidden="true"></i>&nbsp;
            			<%=societyRegNumber + " "+ societyName %>
            		</span>
            	</div>
            </div>
			<div class="row" >
				<nav id="sideNavigation" class="col-md-2 d-none d-md-block sidebar shadow" style="padding:0; overflow:auto">
					<div id="${SOCIETY_DETAILS_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${SOCIETY_DETAILS_M} " href="/society/info?regno=<%=societyRegNumber%>">
									<i class="fa fa-landmark" aria-hidden="true"></i>&nbsp;
									Society Details
								</a>
							</li>
						</ul>
					</div>
					<div id="${MEMBERS_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${MEMBERS_M}" href="/member/list#active">
									<i class="fa fa-braille" aria-hidden="true"></i>&nbsp;
									Members
								</a>
							</li>
						</ul>
					</div>
					<div id="${SHARES_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${SHARES_M}" href="/shares/list#active">
									<i class="fa fa-chart-pie" aria-hidden="true"></i>&nbsp;
									Shares
								</a>
							</li>
						</ul>
					</div>
					<div id="${SOCIETY_EMPLOYEE_DETAILS_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${SOCIETY_EMPLOYEE_DETAILS_M}" href="/societyEmployee/list#active">
									<i class="fa fa-users" aria-hidden="true"></i>&nbsp;
									Society Employee Details
								</a>
							</li>
						</ul>
					</div>
					<div id="${PDS_EMPLOYEE_DETAILS_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${PDS_EMPLOYEE_DETAILS_M}" href="#">
									<i class="fa fa-id-card-alt" aria-hidden="true"></i>&nbsp;
									PDS Employee Details
								</a>
							</li>
						</ul>
					</div>
					<div id="${RETIREMENT_DETAILS_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${RETIREMENT_DETAILS_M}" href="/retirementDetails/list#active">
									<i class="fa fa-couch" aria-hidden="true"></i>&nbsp;
									Retirement Details
								</a>
							</li>
						</ul>
					</div>
					<div id="${AUDIT_DETAILS_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${AUDIT_DETAILS_M}" href="/auditDetails/list#active">
									<i class="fa fa-suitcase" aria-hidden="true"></i>&nbsp;
									Audit Details
								</a>
							</li>
						</ul>
					</div>
					<div id="${BOARD_DETAILS_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${BOARD_DETAILS_M}" href="/boardDetails/list#active">
									<i class="fa fa-user-tie" aria-hidden="true"></i>&nbsp;
									Board Details
								</a>
							</li>
						</ul>
					</div>
					<div id="${DEPUTATION_DETAILS_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${DEPUTATION_DETAILS_M}" href="/deputation/list#active">
									<i class="fa fa-compact-disc" aria-hidden="true"></i>&nbsp;
									Deputation Details
								</a>
							</li>
						</ul>
					</div>
					<div id="${PETITION_DETAILS_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${PETITION_DETAILS_M}" href="/petition/list#active">
									<i class="fa fa-box-open" aria-hidden="true"></i>&nbsp;
									Petition Details
								</a>
							</li>
						</ul>
					</div>
					<div id="${BONUS_DETAILS_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${BONUS_DETAILS_M}" href="/bonusDetails/list#active">
									<i class="fa fa-rupee-sign" aria-hidden="true"></i>&nbsp;
									Bonus Details
								</a>
							</li>
						</ul>
					</div>
					<div id="${PROMOTION_DETAILS_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${PROMOTION_DETAILS_M}" href="/promotionDetails/list#active">
									<i class="fa fa-gift" aria-hidden="true"></i>&nbsp;
									Promotion Details
								</a>
							</li>
						</ul>
					</div>
					<div id="${INSPECTION_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${INSPECTION_M}" href="/inspection/list#active">
									<i class="fa fa-search" aria-hidden="true"></i>&nbsp;
									Inspection
								</a>
							</li>
						</ul>
					</div>
					<div id="${STOCK_VERIFICATION_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${STOCK_VERIFICATION_M}" href="/stockVerification/list#active">
									<i class="fa fa-server" aria-hidden="true"></i>&nbsp;
									Stock Verification
								</a>
							</li>
						</ul>
					</div>
					<div id="${ENQUIRY_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${ENQUIRY_M}" href="/enquiry/list#active">
									<i class="fa fa-question-circle" aria-hidden="true"></i>&nbsp;
									Enquiry Details
								</a>
							</li>
						</ul>
					</div>
					<div id="${INSPECTION_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${INSPECTION_M}" href="/courtCase/list#active">
									<i class="fa fa-balance-scale" aria-hidden="true"></i>&nbsp;
									Court Case Details
								</a>
							</li>
						</ul>
					</div>
					<div id="${INSPECTION_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${INSPECTION_M}" href="/rti/list#active">
									<i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp;
									RTI
								</a>
							</li>
						</ul>
					</div>
					<div id="${SPECIAL_REPORTS_M}">
						<ul class="nav flex-column">
							<li class="nav-item">
								<a class="nav-link sidebar-sticky ${SPECIAL_REPORTS_M}" href="/specialReport/list#active">
									<i class="fa fa-file-signature" aria-hidden="true"></i>&nbsp;
									Special Report
								</a>
							</li>
						</ul>
					</div>
				</nav>
				<main role="main" class="col-md-9 ml-sm-auto col-lg-10 shadow mainContent" style="background:#004D40;">
<!-- 				 px-4 -->
					<jsp:include page="${pageName}.jsp" />
				</main>
			</div>
		</div>
</body>
</html>