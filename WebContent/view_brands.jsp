<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.data{max-height:360px;min-height:200px;overflow-x:scroll;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<link href="customs.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/view_brands"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid">
<div class="row">
<jsp:include page="sidebar.jsp"></jsp:include>

<div class="col-md-9"  style="background-color:white;">
	<h1>View Brands</h1>
	<div class="row">
		<div class="col-md-12">
		 	<div class="panel panel-default">
      			<div class="panel-heading"><span class="glyphicon glyphicon-home"></span> Home
      			</div>
    		</div>
		</div>
	</div>
	<div class="data">
	<table class="table table-hover">
		<thead>
			<th>Brand_ID</th><th>Brand Name</th><th>Brand Logo</th><th>Category</th><th>Edit</th><th>Delete</th>
		</thead>
		<tbody>
		<c:forEach items="${brands}" var="s">
		<tr>
			<td>${s.getBrand_id()}</td>
			<td>${s.getBrand_name()}</td>
			<td>${s.getBrand_logo()}</td>
			<td>${s.getBrand_pid()}</td>
			<td><a href="edit_brand.jsp?id=${s.getBrand_id()}" class="btn btn-success"><span class="glyphicon glyphicon-edit"></span></a></td>
      		<td><a href="Delete_Brand?id=${s.getBrand_id()}" class="btn btn-success"><span class="glyphicon glyphicon-trash"></span></a></td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
	<a href="add_brand.jsp" class="btn btn-info">Add Brand</a>
	
</div>
</div>
</div>
</body>
</html>