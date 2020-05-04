<%@page import="com.cas.business.entity.Society"%>
<%@page import="com.cas.business.entity.Block"%>
<%@page import="com.cas.business.entity.District"%>
<%@page import="com.cas.business.entity.Circle"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
            		<form action="/society/add#active" method="GET">
            			<button type="submit" class="btn btn-primary btn-action float-right" ><i class="fa fa-plus" aria-hidden="true"></i> Add Society</button>
            		</form>
            	</div>
            </div>
            
            <div class="row">
            
                <div class="col-lg-12">
    		<form action="/home" method="POST" name="frm">
    			<input type="hidden" name="district">
    			<input type="hidden" name="circle">
    			<input type="hidden" name="block">
            
            <div class="row">
            
                <div class="col-lg-3">
                	<span class="badge">District</span>
                    <ul class="list-group shadow" id ="districtList" style="overflow:auto;">
                    	<%
                    	List<District> districtList = (List<District>)request.getAttribute("districtList");
                    	String district = (String)request.getAttribute("district");
                    	for(int i=0; i < districtList.size(); i++) {
                    		District d = districtList.get(i);
                    		if(i==0 && district.equals("")){
                    			%>
                    			<li class="list-group-item active d-flex justify-content-between align-items-center" id="<%=d.getId() %>">
                    			<%
                    		}
                    		else if(district.equals(""+d.getId())){
                    			%>
                    			<li class="list-group-item active d-flex justify-content-between align-items-center" id="<%=d.getId() %>">
                    			<%
                    		}
                    		else{
                    			%>
                    			<li class="list-group-item d-flex justify-content-between align-items-center" id="<%=d.getId() %>">
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
                    	String circle = (String)request.getAttribute("circle");
                    	for(int i=0; i < circleList.size(); i++) {
                    		Circle c = circleList.get(i);
                    		if(i==0 && circle.equals("")){
                    			%>
                    			<li class="list-group-item active d-flex justify-content-between align-items-center" id="<%=c.getId() %>">
                    			<%
                    		}
                    		else if(circle.equals(""+c.getId())){
                    			%>
                    			<li class="list-group-item active d-flex justify-content-between align-items-center" id="<%=c.getId() %>">
                    			<%
                    		}
                    		else{
                    			%>
                    			<li class="list-group-item d-flex justify-content-between align-items-center" id="<%=c.getId() %>">
                    			<%
                    		}
                    	%>
                    		<%=c.getName()%>
                    	<% 
                    	}
                    	if(circleList.isEmpty()) {
                    		%>
                    		<div align="center" style="padding: 34px;">
                    			<i class="fa fa-folder-open-o" aria-hidden="true" style="font-size: 30px;"></i>
                    		</div>
                    		<%
                    	}
                    	%>
                    </ul>
                </div>
                <div class="col-lg-3">
                	<span class="badge">Block</span>
                    <ul class="list-group shadow" id ="blockList" style="overflow:auto;">
                    	<%
                    	List<Block> blockList = (List<Block>)request.getAttribute("blockList");
                    	String block = (String)request.getAttribute("block");
                    	for(int i=0; i < blockList.size(); i++) {
                    		Block b = blockList.get(i);
                    		if(i==0 && block.equals("")){
                    			%>
                    			<li class="list-group-item active d-flex justify-content-between align-items-center" id="<%=b.getId() %>">
                    			<%
                    		}
                    		else if(block.equals(""+b.getId())){
                    			%>
                    			<li class="list-group-item active d-flex justify-content-between align-items-center" id="<%=b.getId() %>">
                    			<%
                    		}
                    		else{
                    			%>
                    			<li class="list-group-item d-flex justify-content-between align-items-center" id="<%=b.getId() %>">
                    			<%
                    		}
                    	%>
                    		<%=b.getName()%></li>
                    	<% 
                    	} 

                    	if(blockList.isEmpty()) {
                    		%>
                    		<div align="center" style="padding: 34px;">
                    			<i class="fa fa-folder-open-o" aria-hidden="true" style="font-size: 30px;"></i>
                    		</div>
                    		<%
                    	}
                    	%>
                    </ul>
                    
                </div>
                
            </form>
                <div class="col-lg-3">
                	<span class="badge">Society</span>
                	<ul class="list-group shadow" id ="societyList" style="overflow:auto;">
						<c:forEach items="${societyList}" var="society">
                    		<li class="list-group-item d-flex align-items-center">
                    		<form action="/society/info" method="GET" style="margin-right:15px;">
		            			<input type="hidden" value="${society.registrationNumber}" name="regno">
		            			<button type="submit" class="btn btn-primary float-right"><i class="fa fa-eye" aria-hidden="true"></i></button>
		            		</form>
		            		${society.registrationNumber} &nbsp;&nbsp; ${society.name}
		            		</li>
		            	</c:forEach>
		            	<c:if test="${empty societyList}">
                    		<div align="center" style="padding: 34px;">
                    			<i class="fa fa-folder-open-o" aria-hidden="true" style="font-size: 30px;"></i>
                    		</div>
						</c:if>
                    </ul>
            </div>
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

	<script type="text/javascript">
		$("#districtList li").on("click", function() {
			$('#districtList li.active').removeClass('active');
			$(this).addClass("active");
			submitForm();
		});

		$("#circleList li").on("click", function() {
			$('#circleList li.active').removeClass('active');
			$(this).addClass("active");
			submitForm();
		});

		$("#blockList li").on("click", function() {
			$('#blockList li.active').removeClass('active');
			$(this).addClass("active");
			submitForm();
		});

		function submitForm() {
			frm.district.value = $("#districtList li.active").attr("id");
			frm.circle.value = $("#circleList li.active").attr("id");
			frm.block.value = $("#blockList li.active").attr("id");
			frm.submit();
		}
	</script>
</body>
</html>