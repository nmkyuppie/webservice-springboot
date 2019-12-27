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
      <!-- Footer -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/1a055a024c.js"></script>
    <script src="../static/js/main.js"></script>
    <script src="../static/js/bootstrap-datepicker.js"></script>

    <title>Branch - Society Banking</title>
  </head>
 <body>
 
   
        <%@ include file = "header.jsp" %>
        <div class="container-fluid">
            <div class="row justify-content-end" style="margin: 15px -15px;">
            	<div class="col offset-md-6">
            		<form action="/branch/add" method="GET">
            			<input type="submit" class="btn btn-primary float-right" value="Add Branch">
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
									<th scope="col">PACSS</th>
									<th scope="col">Registration Number</th>
									<th scope="col">Circle</th>
									<th scope="col">Village</th>
									<th scope="col">Post</th>
									<th scope="col">Registration Date</th>
									<th scope="col">Starting Date</th>
									<th scope="col">Taluk</th>
									<th scope="col">District</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${societyList}" var="society">
									<tr>
										<td>
						            		<form action="/branch/edit" method="POST">
						            			<input type="hidden" value="${society.branchId}" name="branchId">
						            			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-pencil" aria-hidden="true"></i></button>
						            		</form>
										</td>
										<td>${society.branchId}</td>
										<td>${society.branch}</td>
										<td>${society.paccs}</td>
										<td>${society.registrationNumber}</td>
										<td>${society.circle}</td>
										<td>${society.village}</td>
										<td>${society.post}</td>
										<td>${society.dateOfRegistration}</td>
										<td>${society.dateOfStarting}</td>
										<td>${society.taluk}</td>
										<td>${society.district}</td>
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