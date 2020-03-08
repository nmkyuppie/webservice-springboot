<%@page import="com.cas.business.entity.Block"%>
<%@page import="com.cas.business.entity.District"%>
<%@page import="com.cas.business.entity.Circle"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/styles.css">

    <title>Home - Society Banking</title>
  </head>
  <body>
        <%@ include file = "header.jsp" %>
        <div class="container-fluid">
            <div class="row justify-content-end" style="margin: 10px -15px;">
            	<div class="col offset-md-6">
            		<form action="/society/add" method="GET">
            			<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-plus" aria-hidden="true"></i> Add Society</button>
            		</form>
            	</div>
            </div>
            
            <div class="row">
                <div class="col-lg-3">
                	<span class="badge">District</span>
                    <ul class="list-group shadow" id ="districtList" style="overflow:auto;">
                    	<%
                    	List<District> districtList = (List<District>)request.getAttribute("districtList");
                    	for(int i=0; i < districtList.size(); i++) {
                    		District d = districtList.get(i);
                    		if(i==0){
                    			%>
                    			<li class="list-group-item active d-flex justify-content-between align-items-center">
                    			<%
                    		}
                    		else{
                    			%>
                    			<li class="list-group-item d-flex justify-content-between align-items-center">
                    			<%
                    		}
                    	%>
                    		<%=d.getName()%>
                    	<% } %>
                    </ul>
                </div>
                <div class="col-lg-3">
                	<span class="badge">Circle</span>
                    <ul class="list-group shadow" id ="circleList" style="overflow:auto;">
                    	<%
                    	List<Circle> circleList = (List<Circle>)request.getAttribute("circleList");
                    	for(int i=0; i < circleList.size(); i++) {
                    		Circle c = circleList.get(i);
                    		if(i==0){
                    			%>
                    			<li class="list-group-item active d-flex justify-content-between align-items-center">
                    			<%
                    		}
                    		else{
                    			%>
                    			<li class="list-group-item d-flex justify-content-between align-items-center">
                    			<%
                    		}
                    	%>
                    		<%=c.getName()%>
                    	<% } %>
                    </ul>
                </div>
                <div class="col-lg-3">
                	<span class="badge">Block</span>
                    <ul class="list-group shadow" id ="blockList" style="overflow:auto;">
                    	<%
                    	List<Block> blockList = (List<Block>)request.getAttribute("blockList");
                    	for(int i=0; i < blockList.size(); i++) {
                    		Block b = blockList.get(i);
                    		if(i==0){
                    			%>
                    			<li class="list-group-item active d-flex justify-content-between align-items-center">
                    			<%
                    		}
                    		else{
                    			%>
                    			<li class="list-group-item d-flex justify-content-between align-items-center">
                    			<%
                    		}
                    	%>
                    		<%=b.getName()%>
                    	<% } %>
                    </ul>
                    
                </div>
                <div class="col-lg-3">
                	<span class="badge">Society</span>
                     <div class="jumbotron jumbotron-table">
                        <table class="table table-sm">
							<!-- <thead>
								<tr>
									<th width="5%"></th>
									<th scope="col">#</th>
									<th scope="col">Society Name</th>
									<th scope="col">Registration Number</th>
								</tr>
							</thead> -->
							<tbody>
								<c:forEach items="${societyList}" var="society">
									<tr>
										<td width="5%">
						            		<form action="/society/info" method="GET">
						            			<input type="hidden" value="${society.registrationNumber}" name="regno">
						            			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-eye" aria-hidden="true"></i></button>
						            		</form>
										</td>
<%-- 										<td>${society.branchId}</td> --%>
										<td>${society.name}</td>
<%-- 										<td>${society.registrationNumber}</td> --%>
									</tr>
								</c:forEach>
							</tbody>
					</table>
                     
                </div>
            </div>
        </div>
        <!-- Footer -->
        <footer class="page-footer font-small blue">

        <!-- Copyright -->
        <!-- <div class="footer-copyright text-center py-3">© 2019 Copyright:
          <a href="#"> Society Bank</a>
        </div> -->
        <!-- Copyright -->
      
      </footer>
      <!-- Footer -->
  </body>
</html>