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
	<link href="customs.css" rel="stylesheet">
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</head>
<body>

<jsp:include page="/ViewAllCategory"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid">
<div class="row">
<jsp:include page="sidebar.jsp"></jsp:include>

<div class="col-md-9"  style="background-color:white;">
	<h1>View Category</h1>
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
			<th>Category_ID</th><th>Category Name</th><th>Parent_ID</th><th>Edit</th><th>Delete</th>
		</thead>
		<tbody>
		<c:forEach items="${cats}" var="s">
		<tr>
			<td>${s.getC_id()}</td>
			<td>${s.getCat()}</td>
			<td>${s.getP_id()}</td>
			<td><a href="edit_category.jsp?id=${s.getC_id()}" class="btn btn-success"><span class="glyphicon glyphicon-edit"></span></a></td>
      		<td><a href="Delete_Cat?id=${s.getC_id()}" class="btn btn-success"><span class="glyphicon glyphicon-trash"></span></a></td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
	<a href="add_category.jsp" class="btn btn-info">Add Category</a>
	
</div>
</div>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>