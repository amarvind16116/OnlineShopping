<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<link href="customs.css" rel="stylesheet">
</head>
<body>

<%
int pro_id=Integer.parseInt(request.getParameter("id"));
pageContext.setAttribute("pro_id",pro_id);
//out.print(c_id);
%>

<jsp:include page="/Search_Product" flush="true">
	<jsp:param name="id" value="${pro_id }"/>
</jsp:include>

<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid">
<div class="row">
<jsp:include page="sidebar.jsp"></jsp:include>

<div class="col-md-9">
	<h1>Edit Product</h1>
	<div class="row">
		<div class="col-md-12">
		 	<div class="panel panel-default">
      			<div class="panel-heading"><span class="glyphicon glyphicon-home"></span> Home
      			</div>
    		</div>
		</div>
	</div>
	<c:forEach items="${product }" var="s">
	<form method="get" action="Edit_Product">
    <div class="form-group">
      <label for="fname">Prodcut ID:</label>
      <input type="text" class="form-control" value="${s.getProduct_id() }" placeholder="Product Title" name="p_id" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="fname">Prodcut Title:</label>
      <input type="text" class="form-control" value="${s.getProduct_name() }" placeholder="Product Title" name="pname" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="fname">Model No:</label>
      <input type="text" class="form-control" value="${s.getModel_no() }" placeholder="Product Title" name="model_no" style="min-width:450px;max-width:600px;">
    </div>
	<div class="form-group">
      <label for="lname">MRP Price:</label>
      <input type="number" class="form-control" value="${s.getMrp_price() }" placeholder="MRP Price" name="mrp_price" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="lname">Selling Price:</label>
      <input type="number" class="form-control" value="${s.getSell_price() }" placeholder="Selling Price" name="sell_price" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="lname">Brand:</label>
      <input type="text" class="form-control" value="${s.getBrand() }" placeholder="Brand" name="brand" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="lname">Category:</label>
      <input type="number" class="form-control" value="${s.getCategory() }" placeholder="Category" name="cat" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="lname">Stock:</label>
      <input type="number" class="form-control" value="${s.getStock() }" placeholder="stock" name="stock" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="lname">Image Upload:</label>
      <input type="text" class="form-control" value="${s.getImg() }" placeholder="Enter Image Name" name="img" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="lname">Seller:</label>
      <input type="text" class="form-control" value="${s.getSeller() }" placeholder="Seller" name="seller" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="lname">Description:</label>
      <input type="text" class="form-control" value="${s.getDesc() }" placeholder="Description" name="desc" style="min-width:450px;max-width:600px;">
    </div>
    <button type="submit" class="btn btn-primary">Save</button>
  </form>
  </c:forEach>
	
	
</div>
</div>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>