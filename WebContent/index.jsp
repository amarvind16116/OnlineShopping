<%@ page import="java.sql.*" %>
<%@ include file="Connection.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Panel</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="customs.css" rel="stylesheet">
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</head>
<body style="background-color:#f2f2f2;">

<%
if(session.getAttribute("user")==null)
{
	/* out.print("<html><div class='text-danger''>Failure ! You Must Login First Behan Ke Lowde</div></html>");
	RequestDispatcher rd=request.getRequestDispatcher("login.html");
	rd.include(request,response); */
	response.sendRedirect("AdminLogin.html");
}
%>
<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid">
<div class="row">
<jsp:include page="sidebar.jsp"></jsp:include>

<div class="col-md-9">
	<div class="row">
		<div class="col-md-12">
		 	<div class="panel panel-default">
      			<div class="panel-heading main-bg">
      				<h3 class="panel-title">Website Overview</h3>
      			</div>
      			<div class="panel-body">
      				<div class="col-md-3">
      					<div class="well well-box">
      						<h2><span class="glyphicon glyphicon-user" are-hidden="true"></span> 203</h2>
      						<h4>Users</h4>
      					</div>
      				</div>
      				<div class="col-md-3">
      					<div class="well well-box">
      						<h2><span class="glyphicon glyphicon-list-alt" are-hidden="true"></span> 12</h2>
      						<h4>Products</h4>
      					</div>
      				</div>
      				<div class="col-md-3">
      					<div class="well well-box">
      						<h2><span class="glyphicon glyphicon-pencil" are-hidden="true"></span> 33</h2>
      						<h4>Posts</h4>
      					</div>
      				</div>
      				<div class="col-md-3">
      					<div class="well well-box">
      						<h2><span class="glyphicon glyphicon-stats" are-hidden="true"></span> 12203</h2>
      						<h4>Visitors</h4>
      					</div>
      				</div>
      			</div>
    		</div><!-- End of Panel-->
		</div><!-- End of Col -->
	</div><!-- End of Row1 -->	
</div>
</div>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>