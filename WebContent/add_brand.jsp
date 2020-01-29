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

<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid">
<div class="row">
<jsp:include page="sidebar.jsp"></jsp:include>

<div class="col-md-9">
	<h1>Add Brand</h1>
	<div class="row">
		<div class="col-md-12">
		 	<div class="panel panel-default">
      			<div class="panel-heading"><span class="glyphicon glyphicon-home"></span> Home
      			</div>
    		</div>
		</div>
	</div>
	<form role="form" action="Add_Brand_Servlet" method="GET">
	    <div class="form-group">
	      <label for="bname">Brand Name:</label>
	      <input type="text" class="form-control" id="bname" placeholder="Brand Name" name="brand" style="min-width:450px;max-width:600px;">
	    </div>
	    <div class="form-group">
	      <label for="blogo">Brand Logo:</label>
	      <input type="text" class="form-control" id="blogo" placeholder="Brand Logo" name="blogo" style="min-width:450px;max-width:600px;">
	    </div>
	    <div class="form-group">
  		<%
		ps = con.prepareStatement("select * from categories");
		rs =ps.executeQuery();
		%>
  		<label for="sel1">Select Brand Category:</label>
	  		<select class="form-control" id="sel1" name="p_id" style="width:250px;">
	  		<%
			while(rs.next())
			{
			%>
	    		<option value="<% out.print(rs.getInt("c_id")); %>"> <% out.print(rs.getString("cat_name")); %> </option>
	    	<%	
			}
			%>
			 </select>
	</div>
	
	    <button type="submit" class="btn btn-primary">Submit</button>
	    <a href="view_brands.jsp" class="btn btn-info">View Brands</a>
  	</form>
	
	
</div>
</div>
</div>
</body>
</html>