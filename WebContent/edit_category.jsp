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
int c_id=Integer.parseInt(request.getParameter("id"));
pageContext.setAttribute("c_id",c_id);
//out.print(c_id);
%>

<jsp:include page="/Search_Category" flush="true">
	<jsp:param name="c_id" value="${c_id }"/>
</jsp:include>

<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid">
<div class="row">
<jsp:include page="sidebar.jsp"></jsp:include>

<div class="col-md-9">
	<h1>Edit Category</h1>
	<div class="row">
		<div class="col-md-12">
		 	<div class="panel panel-default">
      			<div class="panel-heading"><span class="glyphicon glyphicon-home"></span> Home
      			</div>
    		</div>
		</div>
	</div>
	<c:forEach items="${cat }" var="s">
	<form method="get" action="Edit_Category">
	<input type="hidden" value="${s.getC_id() }" name="id">
    <div class="form-group">
      <label for="fname">Category Name:</label>
      <input type="text" class="form-control" id="fname" value="${s.getCat() }" name="cat" style="min-width:450px;max-width:600px;">
    </div>
	<div class="form-group">
      <label for="lname">Parent_ID:</label>
      <input type="number" class="form-control" id="lname" value="${s.getP_id() }" name="p_id" style="min-width:450px;max-width:600px;">
    </div>
    <div class="form-group">
      <label for="lname">Category_ID:</label>
      <input type="number" class="form-control" id="lname" value="${s.getC_id() }" name="p_id" style="min-width:450px;max-width:600px;">
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