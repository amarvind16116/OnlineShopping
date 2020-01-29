<%@ page import="java.sql.*" %>
<%@ include file="Connection.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.data{height:360px;overflow-x:scroll;overflow-y:scroll;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<link href="customs.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/ViewAllOrders"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid">
<div class="row">
<jsp:include page="sidebar.jsp"></jsp:include>

<div class="col-md-10" style="background-color:white;">
	<h1>View Product</h1>
	<div class="row">
		<div class="col-md-12">
		 	<div class="panel panel-default">
      			<div class="panel-heading">
      				<a><span class="glyphicon glyphicon-home"></span> Home</a>
      			</div>
    		</div>
		</div>
	</div>
	<div class="data">
	<table class="table table-hover mytable">
		<thead>
			<th>Order ID</th><th>Product Title</th><th>Price</th><th>Quantity</th><th>Edit</th><th>Delete</th>
		</thead>
		<tbody>
		<c:forEach items="${ orders}" var="s">
		<tr>
			<td>${s.getOrder_id() }</td>
			<td>${s.getProduct_name() }</td>
			<td>${s.getTotal() }</td>
			<td>${s.getQuantity() }</td>
			<td><a href="edit_product.jsp?id=${s.getOrder_id() }" class="btn btn-success"><span class="glyphicon glyphicon-edit"></span></a></td>
      		<td><a href="delete_Pro?id=${s.getOrder_id()}" class="btn btn-success"><span class="glyphicon glyphicon-trash"></span></a></td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
	
	
</div>
</div>
</div>
	
</body>
</html>