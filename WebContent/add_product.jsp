<%@ page import="java.sql.*" %>
<%@ include file="Connection.jsp" %>
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

<div class="container-fluid">
<div class="row">

<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>

<div class="col-md-9">
	<h1>Add Product</h1>
	<div class="row">
		<div class="col-md-12">
		 	<div class="panel panel-default">
      			<div class="panel-heading"><span class="glyphicon glyphicon-home"></span> Home
      			</div>
    		</div>
		</div>
	</div>
	<form role="form" action="Add_Product" method="GET">
    <div class="form-group">
      <label for="fname">Prodcut Title:</label>
      <input type="text" class="form-control" id="pname" placeholder="Product Title" name="pname" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="fname">Model No:</label>
      <input type="text" class="form-control" id="pname" placeholder="Product Title" name="model_no" style="min-width:450px;max-width:600px;">
    </div>
	<div class="form-group">
      <label for="lname">MRP Price:</label>
      <input type="number" class="form-control" id="price" placeholder="MRP Price" name="mrp_price" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="lname">Selling Price:</label>
      <input type="number" class="form-control" id="price" placeholder="Selling Price" name="sell_price" style="min-width:450px;max-width:600px;">
    </div>
    <!-- <div class="form-group">
      <label for="lname">Brand:</label>
      <input type="text" class="form-control" id="brand" placeholder="Brand" name="brand" style="min-width:450px;max-width:600px;">
    </div> -->
    <div class="form-group">
  		<%
		ps = con.prepareStatement("select * from brands");
		rs =ps.executeQuery();
		%>
  		<label for="sel1">Select Brand:</label>
	  		<select class="form-control" id="sel1" name="brand" style="width:250px;">
	  		<%
			while(rs.next())
			{
			%>
	    		<option value="<% out.print(rs.getString("brand_name")); %>"> <% out.print(rs.getString("brand_name")); %> </option>
	    	<%	
			}
			%>
			 </select>
	</div>
    
<!--     <div class="form-group">
      <label for="lname">Category:</label>
      <input type="number" class="form-control" id="lname" placeholder="Category" name="cat" style="min-width:450px;max-width:600px;">
    </div> -->
    <div class="form-group">
  		<%
		ps = con.prepareStatement("select * from categories");
		rs =ps.executeQuery();
		%>
  		<label for="sel1">Select Category:</label>
	  		<select class="form-control" id="sel1" name="cat" style="width:250px;">
	  		<%
			while(rs.next())
			{
			%>
	    		<option value="<% out.print(rs.getString("c_id")); %>"> <% out.print(rs.getString("cat_name")); %> </option>
	    	<%	
			}
			%>
			 </select>
	</div>
    <div class="form-group">
      <label for="lname">Stock:</label>
      <input type="number" class="form-control" id="price" placeholder="stock" name="stock" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="lname">Image Upload:</label>
      <input type="text" class="form-control" id="img" placeholder="Enter Image Name" name="img" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="lname">Seller:</label>
      <input type="text" class="form-control"  placeholder="Seller" name="seller" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="lname">Delivery Time:</label>
      <input type="number" class="form-control"  placeholder="Delivery Time" name="dtime" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="lname">Description:</label>
      <input type="text" class="form-control" id="lname" placeholder="Description" name="desc" style="min-width:450px;max-width:600px;">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
	
	
</div>
</div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>