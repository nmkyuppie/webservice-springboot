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

    <title>Jewel Loan - Society Banking</title>
  </head>
 <body>
 
   
        <%@ include file = "header.jsp" %>
        <div class="container-fluid">
            <div class="row justify-content-end" style="margin: 15px -15px;">
            	<div class="col offset-md-6">
            		<form action="/jewelloan/report/pdf" method="GET" >
            			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-file-pdf-o" aria-hidden="true"></i> PDF</button>
            		</form>
            		<form action="/jewelloan/add#active" method="GET">
            			<button type="submit" class="btn btn-primary float-right" style="margin-right:15px;"><i class="fa fa-plus" aria-hidden="true"></i> Add Jewel Loan</button>
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
<!-- 									<th scope="col">#</th> -->
									<th scope="col" nowrap="nowrap">Society Name</th>
									<th scope="col" nowrap="nowrap">JL Year Target</th>
									<th scope="col" nowrap="nowrap">JL Target per Month</th>
									<th scope="col" nowrap="nowrap">JL # upto Month</th>
									<th scope="col" nowrap="nowrap">JL Amount upto Month</th>
									<th scope="col" nowrap="nowrap">JL Improve per Target</th>
									<th scope="col" nowrap="nowrap">JL Improve per Year Target</th>
									<th scope="col" nowrap="nowrap">HG Year Target</th>
									<th scope="col" nowrap="nowrap">HG Target per Month</th>
									<th scope="col" nowrap="nowrap">HG # upto Month</th>
									<th scope="col" nowrap="nowrap">HG Amount upto Month</th>
									<th scope="col" nowrap="nowrap">HG Improve per Target</th>
									<th scope="col" nowrap="nowrap">HG Improve per Year Target</th>
									<th scope="col" nowrap="nowrap">HG No. of Member</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${jewelLoanList}" var="jl">
									<tr>
										<td>
						            		<form action="/jewelloan/edit#active" method="POST">
						            			<input type="hidden" value="${jl.sid}" name="sid">
						            			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-pen" aria-hidden="true"></i></button>
						            		</form>
										</td>
										<td>${jl.sid}</td>
										<td nowrap="nowrap">${jl.societyName}</td>
										<td>${jl.jlYearTarget}</td>
										<td>${jl.jlTargetPerUptoMonth}</td>
										<td>${jl.jlNoUptoMonth}</td>
										<td>${jl.jlTotalAmountUptoMonth}</td>
										<td>${jl.jlImprovePerTarget}</td>
										<td>${jl.jlImprovePerYearTarget}</td>
										<td>${jl.hgYearTarget}</td>
										<td>${jl.hgTargetPerUptoMonth}</td>
										<td>${jl.hgNoUptoMonth}</td>
										<td>${jl.hgTotalAmountUptoMonth}</td>
										<td>${jl.hgImprovePerTarget}</td>
										<td>${jl.hgImprovePerYearTarget}</td>
										<td>${jl.hgNoOfMember}</td>
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