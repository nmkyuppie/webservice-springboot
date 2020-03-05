<%@page import="com.cas.business.entity.Circle"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

    <title>Society - Core Banking Solutions</title>
  </head>
 <body>
        <%@ include file = "header.jsp" %>
        <div class="container-fluid">
            <div class="row justify-content-end" style="margin: 15px -15px;">
            	<div class="col offset-md-6">
            		<form action="/society/add" method="GET">
            			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-plus" aria-hidden="true"></i> Add Branch</button>
            		</form>
            	</div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                     <div class="jumbotron jumbotron-table">
                        <table class="table table-sm">
							<thead>
								<tr>
									<th></th>
									<th scope="col">#</th>
									<th scope="col">Branch Name</th>
									<th scope="col">Registration Number</th>
									<th scope="col">Circle</th>
									<th scope="col">Village</th>
									<th scope="col">Post</th>
									<th scope="col">Registration Date</th>
									<th scope="col">Starting Date</th>
									<th scope="col">Taluk</th>
									<th scope="col">District</th>
									<th scope="col">Area Coverage</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${societyList}" var="society">
									<tr>
										<td>
						            		<form action="/society/edit" method="POST">
						            			<input type="hidden" value="${society.id}" name="societyId">
						            			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-pencil" aria-hidden="true"></i></button>
						            		</form>
										</td>
										<td>${society.id}</td>
										<td>${society.name}</td>
										<td>${society.registrationNumber}</td>
										<td>${society.circle}</td>
										<td>${society.village}</td>
										<td>${society.post}</td>
										<td>${society.registrationDate}</td>
										<td>${society.startingDate}</td>
										<td>${society.taluk}</td>
										<td>${society.district}</td>
										<td>${society.areaCoverage}</td>
									</tr>
								</c:forEach>
							</tbody>
					</table>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <footer class="page-footer font-small blue">

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">&#9400; 2019 Copyright:
          <a href="#"> Society Bank</a>
        </div>
        <!-- Copyright -->
      
      </footer>
  </body>
</html>