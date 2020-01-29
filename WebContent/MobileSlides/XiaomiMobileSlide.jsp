<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<style type="text/css">
		.thumbnail{width:100%;border:0px !important;}
		body{background-color:#f2f2f2 !important;}
		.Mycontainer{height:300px !important;background-color:white;}
		.panel-heading{height:60px !important;background-color:white !important;}
	</style>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="custom.css" rel="stylesheet">
</head>
<body>
	
	<jsp:include page="/ViewProductByBrand">
		<jsp:param value="Xiaomi" name="brand"/>
	</jsp:include>


<div class="col-md-9 pull-right Mycontainer">
	<div class="row panel panel-default">
		<div class="panel-heading"><font size=5>Xiaomi Mobiles</div></font>
		<div class="panel-body">
		<div class="col-md-12">
		<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="false">

		    <!-- Wrapper for slides -->
		    <div class="carousel-inner" role="listbox">		
		      <div class="item active">
				<div class="row">
				<c:forEach items="${products}" var="s" begin="0" end="5">
					<div class="col-md-2">
					<a href="view_item.jsp?id=${s.getProduct_id()}" class="thumbnail">
						<img src="images/mobiles/${s.getImg()}" alt="${s.getImg()}" style="height:200px;">
					</a>
					<div>
						<h5 class="text-danger  text-center"><a href="#"></a> ${s.getProduct_name() }</h5>
					</div>
					</div>
				</c:forEach>
			    </div>
			  </div><!--End of 1st Slide-->
			  
			  <div class="item">
				<div class="row">
				<c:forEach items="${products}" var="s" begin="6" end="11">
					<div class="col-md-2">
				
					<a href="view_item.jsp?id=${s.getProduct_id()}" class="thumbnail">
						<img src="images/mobiles/${s.getImg()}" alt="${s.getImg()}" style="height:170px;">
					</a>
					<div>
						<h5 class="text-danger  text-center"><a href="#"></a> ${s.getProduct_name() }</h5>
					</div>
					</div>
				</c:forEach>
			    </div>
	   		 </div><!--End of 2nd Slide-->
	   		 
			<a class="left carousel-control" href="#myCarousel1" role="button" data-slide="prev">
		      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" href="#myCarousel1" role="button" data-slide="next">
		      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		      <span class="sr-only">Next</span>
		    </a>
  			</div><!-- End of Carousel Inner -->
		</div><!-- End of myCarousel -->	
		</div><!-- End of col-md-12 -->
		</div>
		
		
		
		
	</div><!--  End of Row -->
</div><!-- End of col-md-12 -->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>