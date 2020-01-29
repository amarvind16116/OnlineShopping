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
	<h1>Add Category</h1>
	<div class="row">
		<div class="col-md-12">
		 	<div class="panel panel-default">
      			<div class="panel-heading"><span class="glyphicon glyphicon-home"></span> Home
      			</div>
    		</div>
		</div>
	</div>
	<form role="form" action="Add_Category" method="GET">
    <div class="form-group">
      <label for="fname">Category Name:</label>
      <input type="text" class="form-control" id="fname" placeholder="Category Name" name="cat" style="min-width:450px;max-width:600px;">
    </div>
<!-- 	<div class="form-group">
      <label for="lname">Parent_ID:</label>
      <input type="number" class="form-control" id="lname" placeholder="Parent ID" name="p_id" style="min-width:450px;max-width:600px;">
    </div> -->
    <div class="form-group">
  		<%
		ps = con.prepareStatement("select * from categories");
		rs =ps.executeQuery();
		%>
  		<label for="sel1">Select Parent Category:</label>
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
    <button type="submit" class="btn btn-primary">Submit</button>
    <a href="ViewAllCategory.jsp" class="btn btn-info">View Category</a>
  </form>
	
	
</div>
</div>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>