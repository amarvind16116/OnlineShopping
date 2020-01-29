<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="customs.css" rel="stylesheet">
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="container col-md-2">
					<div class="list-group">
						<a href="index.jsp"><li class="active list-group-item main-bg"><span class="glyphicon glyphicon-dashboard"></span> Dashboard</li></a>
						<a href="#"><li class="dropdown list-group-item"></a>
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span class="glyphicon glyphicon-th-list"></span> Category<b class="caret"></b></a>
							<ul class="dropdown-menu list-group">
								<a href="add_category.jsp"><li class="list-group-item">Add Category</li></a>
								<a href="ViewAllCategory.jsp"><li class="list-group-item">View Categories</li></a>
							</ul>
							
						<a href="#"><li class="dropdown list-group-item"></a>
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span class="glyphicon glyphicon-th-list"></span> Product<b class="caret"></b></a>
							<ul class="dropdown-menu list-group">
								<a href="add_product.jsp"><li class="list-group-item">Add Product</li></a>
								<a href="ViewAllProducts.jsp"><li class="list-group-item">View Product</li></a>
							</ul>
							
						<a href="#"><li class="dropdown list-group-item"></a>
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span class="glyphicon glyphicon-th-list"></span> Slider<b class="caret"></b></a>
							<ul class="dropdown-menu list-group">
								<a href="add_slider.jsp"><li class="list-group-item">Add Slider</li></a>
								<a href="view_slider.jsp"><li class="list-group-item">View Slider</li></a>
							</ul>
						
						<a href="#"><li class="dropdown list-group-item"></a>
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span class="glyphicon glyphicon-th-list"></span> Brands<b class="caret"></b></a>
							<ul class="dropdown-menu list-group">
								<a href="add_brand.jsp"><li class="list-group-item">Add Brand</li></a>
								<a href="view_brands.jsp"><li class="list-group-item">View Brands</li></a>
							</ul>
						
						<a href="ViewAllOrders.jsp"><li class="list-group-item"><span class="glyphicon glyphicon-user"></span> View Orders</li></a>
						<a href="#"><li class="list-group-item"><span class="glyphicon glyphicon-user"></span> User</li></a>
						<a href="#"><li class="list-group-item"><span class="glyphicon glyphicon-home"></span> Other</li></a>
					</div>
</div><!-- End of Container -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>