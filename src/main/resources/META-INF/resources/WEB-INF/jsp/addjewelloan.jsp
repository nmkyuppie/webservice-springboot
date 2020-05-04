<%@page import="com.cas.business.entity.Circle"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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

    <title>Jewel Loan - Society Banking</title>
  </head>
 <body>
        <%@ include file = "header.jsp" %>
        <div class="container-fluid">
            <div class="row justify-content-start" style="margin: 15px -15px;">
            	<div class="col-2">
            		<form action="/jewelloan/list#active" method="GET">
            			<button type="submit" class="btn btn-default"><i class="fa fa-chevron-left" aria-hidden="true"></i> Jewel Loan</button>
            		</form>
            	</div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                     <div class="jumbotron">
                        <form:form method="POST" action="/jewelloan/add#active" modelAttribute="jewelloan">
	                        <fieldset>
                            	<form:hidden class="form-control" name="sid" path="sid" value="" />
	                                <div class="form-row">
		                                <div class="form-group col-sm-4">
		                                    <label>Name of the Society</label>
		                                    <form:input type="text" class="form-control" name="societyName" path="societyName" value="" />
		                                </div>
	                                </div>
	                                <h2 style="color:#fdf59a !important; margin: 10px 0;">Jewel Loan</h2>
	                                <div class="form-row">
		                                <div class="form-group col-sm-2">
		                                    <label>Year Target</label>
		                                    <form:input type="text" class="form-control" name="jlYearTarget" path="jlYearTarget" />
		                                </div>
		                                <div class="form-group col-sm-2">
		                                    <label>Target Per Month</label>
		                                    <form:input type="text" class="form-control" name="jlTargetPerUptoMonth" path="jlTargetPerUptoMonth"/>
		                                </div>
		                                <div class="form-group col-sm-2">
		                                    <label>No. of Loan Per Month</label>
		                                    <form:input type="text" class="form-control" name="jlNoUptoMonth" path="jlNoUptoMonth"/>
		                                </div>
		                                <div class="form-group col-sm-2">
		                                    <label>Total Amount Per Month</label>
		                                    <form:input type="text" class="form-control" name="jlTotalAmountUptoMonth" path="jlTotalAmountUptoMonth"/>
		                                </div>
		                                <div class="form-group col-sm-2">
		                                    <label>Improve Per Month</label>
		                                    <form:input type="text" class="form-control" name="jlImprovePerTarget" path="jlImprovePerTarget"/>
		                                </div>
		                                <div class="form-group col-sm-2">
		                                    <label>Improve Per Year</label>
		                                    <form:input type="text" class="form-control" name="jlImprovePerYearTarget" path="jlImprovePerYearTarget"/>
		                                </div>
	                                </div>
	                                <h2 style="color:#fdf59a !important; margin: 10px 0;">HG Loan</h2>
	                                <div class="form-row">
		                                <div class="form-group col-sm-2">
		                                    <label>Year Target</label>
		                                    <form:input type="text" class="form-control" name="hgYearTarget" path="hgYearTarget" />
		                                </div>
		                                <div class="form-group col-sm-2">
		                                    <label>Target Per Month</label>
		                                    <form:input type="text" class="form-control" name="hgTargetPerUptoMonth" path="hgTargetPerUptoMonth"/>
		                                </div>
		                                <div class="form-group col-sm-2">
		                                    <label>No. of Loan Per Month</label>
		                                    <form:input type="text" class="form-control" name="hgNoUptoMonth" path="hgNoUptoMonth"/>
		                                </div>
		                                <div class="form-group col-sm-2">
		                                    <label>Total Amount Per Month</label>
		                                    <form:input type="text" class="form-control" name="hgTotalAmountUptoMonth" path="hgTotalAmountUptoMonth"/>
		                                </div>
		                                <div class="form-group col-sm-2">
		                                    <label>Improve Per Month</label>
		                                    <form:input type="text" class="form-control" name="hgImprovePerTarget" path="hgImprovePerTarget"/>
		                                </div>
		                                <div class="form-group col-sm-2">
		                                    <label>Improve Per Year</label>
		                                    <form:input type="text" class="form-control" name="hgImprovePerYearTarget" path="hgImprovePerYearTarget"/>
		                                </div>
	                                </div>
	                                <div class="form-row">
		                                <div class="form-group col-sm-2">
		                                    <label>No. Of Member</label>
		                                    <form:input type="text" class="form-control" name="hgNoOfMember" path="hgNoOfMember"/>
		                                </div>
	                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                		<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-floppy-o" aria-hidden="true"></i> Save</button>
                                		<button type="reset" class="btn btn-default btn-action float-right" style="margin-right:15px;"><i class="fa fa-eraser" aria-hidden="true"></i> Clear</button>
										<span class="badge badge-success  float-right">${message }</span>
                                    </div>
                                </div>
                               </fieldset>
                        </form:form>
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
      <!-- Footer -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/1a055a024c.js"></script>
    <script src="../static/js/main.js"></script>
    <script src="../static/js/bootstrap-datepicker.js"></script>
  </body>
</html>