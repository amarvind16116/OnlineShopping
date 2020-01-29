<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="custom.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
	.thumbnail{width:100%;border:0px !important;}
	img:hover:{padding:10px !important;}
	.mobile img{height:200px !important;}
	.col2{background-color:white;padding:10px;}
	.card{margin-bottom:20px;}
	</style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="main_header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<%-- <%
String brand=request.getParameter("brand");
/* out.print(brand); */
pageContext.setAttribute("brand",brand);
%>

	<jsp:include page="/ViewProductByBrand">
		<jsp:param value="${brand}" name="brand"/>
	</jsp:include> --%>
<div class="container-fluid" style="margin-top:30px;margin-right:30px;">
<div class="row">
	<div class="col-md-3">
		<%@ include file="filter.jsp" %>
	</div>
	<div class="col-md-9 col2">
		<div class="row">
			<div class="col-md-12">
				<font size=3>Mobiles</font>
			</div>
			<br><br>
			<div class="col-md-12">
				<font size=3>Sort By &nbsp &nbsp
				<a>Popularity</a> &nbsp &nbsp
				<a>Price--Low to High </a> &nbsp &nbsp
				<a>Price--High to Low </a>&nbsp &nbsp
				<a>Newest First </a>
				</font>
			</div>
		</div>
		<hr>
		
		<c:forEach items="${products }" var="s">
		<div class="row card">
			<div class="col-md-3">
				<a href="ViewProductById?id=${s.getProduct_id()}" class="thumbnail mobile">
					<img src="images/${s.getImg()}" alt="${s.getImg()}">
				</a>
			</div>
			<%-- <a href="view_item.jsp?id=${s.getProduct_id()}"> --%>
			<div class="col-md-6">
				
					<h4 class="text-left">${s.getProduct_name() } </h4>
					<h5><span class="label label-success">4.3 &#9734  </span> &nbsp &nbsp 1,43,206 Ratings & 23,151 Reviews</h5>
					<br>
					<font>
					4 GB RAM | 64 GB ROM | Expandable upto 128 GB<br>
					5.5 inch Full HD Display<br>
					13MP Rear Camera | 5MP Front Camera<br>
					4100 mAh Li-Polymer Battery<br>
					Qualcomm Snapdragon 625 64 bit Octa Core 2Ghz Processor<br>
					Brand Warranty of 1 Year Available for Mobile
					</font>
			</div>
			<!-- </a> -->
			<div class="col-md-3">
				<h3><i class="fa fa-inr" aria-hidden="true"></i> &nbsp${s.getSell_price() } <small><del>Rs  ${s.getMrp_price() }</del></small></h3>
				<h5 class="text-info">Offers</h5>
				<font>EMI starting from Rs 582/Month</font>
				<ul>
				<li><font>No Cost EMI</font></li>
				<li><font>Special Price</font></li>
				</ul>				
			</div>
		</div><hr>
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