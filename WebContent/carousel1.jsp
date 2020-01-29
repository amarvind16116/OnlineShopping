<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="customs.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/view_slides"></jsp:include>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
    
     <div class="carousel-inner" role="listbox">		
		      <div class="item active">
		      <div class="row">
				<c:forEach items="${slides}" var="s" begin="0" end="0">
				<div class="col-md-12">
					<a href="#">
						<img src="images/${s.getImg()}" alt="${s.getImg()}" class="img-responsive">
					</a>
				</div>
				</c:forEach>
			  </div>
			  </div><!--End of 1st Slide-->
			  
			  <div class="item">
			  <div class="row">
				<c:forEach items="${slides}" var="s" begin="1" end="1">
				<div class="row">
					<a href="#">
						<img src="images/${s.getImg()}" alt="${s.getImg()}" class="img-responsive">
					</a>
				</div>
				</c:forEach>
			  </div>
	   		 </div><!--End of 2nd Slide-->
	 </div><!-- End of Carousel Inner -->

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>