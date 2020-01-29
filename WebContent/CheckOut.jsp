<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.box{background-color:#f2f2f2;margin-top:50px;width:600px !important;}
input[type="text"]{width:250px;}
</style>
</head>
<body>
<%
if(session.getAttribute("user")==null)
{
	/* out.print("<html><div class='text-danger''>Failure ! You Must Login First Behan Ke Lowde</div></html>");
	RequestDispatcher rd=request.getRequestDispatcher("login.html");
	rd.include(request,response); */
	//out.println("<html><body><div class='text-alert'>You Must Login First</div></body></html>");
	//RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
	//rd.include(request,response);
	response.sendRedirect("Login.jsp");
}
%>
<%@ include file="main_header.jsp" %>
<%@ include file="nav.jsp" %>
<div class="container box">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-primary">
				<div class="panel-heading">CheckOut</div>
				<div class="panel-body form-horizontal">
				<form action="AddOrderServlet">
					<label class="col-sm-4">Debit Card No</label>
					<input type="text" class="form-control"><br>
					<label class="col-sm-4">Address</label>
					<input type="text" class="form-control">
					<br>
					<div class="form-group">        
					      <div class="col-sm-offset-4 col-sm-4">
					        <button type="submit" class="btn btn-info">Submit</button>
					      </div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>