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
<jsp:include page="/ViewAllProducts"></jsp:include>
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
      				<%-- <a href="ViewProductByBrand" class="pull-right"><span class="glyphicon glyphicon-filter"></span> Filter</a>
      				<div class="form-group pull-right" style="margin-top:-6px;">
					  		<%
							ps = con.prepareStatement("select * from brands");
							rs =ps.executeQuery();
							%>
<!-- 					  		<label for="sel1">Select Brand:</label> -->
						  		<select class="form-control" id="sel1" name="brand" style="width:250px;">
							  		<%
									while(rs.next())
									{
									%>
							    		<option value="<% out.print(rs.getString("brand_name")); %>"> <%out.print("<a href='index.html'>"+rs.getString("brand_name")+"</a>"); %> </option>
							    	<%	
									}
									%>
								 </select>
					</div> --%>
      			</div>
    		</div>
		</div>
	</div>
	<div class="data">
	<table class="table table-hover mytable">
		<thead>
			<th>Product ID</th><th>Product Title</th><th>Model No<th>MRP Price</th><th>Selling Price</th><th>Brand</th><th>Category</th><th>Stock</th><th>Image</th><th>Desc</th><th>Seller</th><th>Delivery Time</th><th>Edit</th><th>Delete</th>
		</thead>
		<tbody>
		<c:forEach items="${products}" var="s">
		<tr>
			<td>${s.getProduct_id() }</td>
			<td>${s.getProduct_name() }</td>
			<td>${s.getModel_no() }</td>
			<td>${s.getMrp_price() }</td>
			<td>${s.getSell_price() }</td>
			<td>${s.getBrand() }</td>
			<td>${s.getCategory() }</td>
			<td>${s.getStock() }</td>
			<td>${s.getImg() }</td>
			<td>${s.getDesc() }</td>
			<td>${s.getSeller() }</td>
			<td>${s.getDtime() }</td>
			<td><a href="edit_product.jsp?id=${s.getProduct_id() }" class="btn btn-success"><span class="glyphicon glyphicon-edit"></span></a></td>
      		<td><a href="delete_Pro?id=${s.getProduct_id()}" class="btn btn-success"><span class="glyphicon glyphicon-trash"></span></a></td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
	<a href="add_product.jsp" class="btn btn-info">Add Product</a>
	
</div>
</div>
</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>