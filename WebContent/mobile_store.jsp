<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">

   <!--  <style type="text/css">
		.Mycontainer{min-height:300px !important;background-color:white;
		margin-top:20px;margin-bottom:40px;}
		img{height:250px;}
		.carousel-control{
		  top: 100px;
		  bottom:100px;
		  width:5%;}
	</style> -->
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="main_header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<jsp:include page="MobileStoreCarousel.jsp"></jsp:include>
<br>
<div class="col-md-12">
	<div class="col-md-3">
		<jsp:include page="filter.jsp"></jsp:include>	
	</div>
	
	<div class="col-md-9">
	
	<jsp:include page="brands_slide.jsp"></jsp:include>
	<br><br>
	<jsp:include page="AppleMobileSlide.jsp"></jsp:include>
	
	<jsp:include page="XiaomiMobileSlide.jsp"></jsp:include>
	
	</div>
</div>

</body>
</html>