<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="custom.css" rel="stylesheet">
	<style type="text/css">
		.thumbnail{width:150px;border: none !important;}
		#myCarousel2 .carousel-control{
		  top: 120px;
		  bottom:120px;
		  width:10%;
		  }
	</style>

	
</head>
<body>
	
	<jsp:include page="/ViewProductByCategory">
		<jsp:param value="5" name="category"/>
	</jsp:include>

<div class="container-fluid Mycontainer">
<div class="row">
<div class="col-md-12">
	<div class="row">
		<div class="col-md-3 text-center">
			<br/>
			<h2 class="text-danger text-center">Deals on Kitchen</br> Appliances </h2><br/>
			<a href="#" class="btn btn-danger"> View All </a>
		</div>
		<br/><br/>
		<div class="col-md-9">
		<div id="myCarousel2" class="carousel slide" data-ride="carousel"  data-interval="false">

		    <!-- Wrapper for slides -->
		    <div class="carousel-inner" role="listbox">		
		      <div class="item active">
				<div class="row">
				<c:forEach items="${products}" var="s" begin="0" end="4">
					<div class="col-md-2" style="height:205px;margin-left:25px;">
					<a href="ViewProductById?id=${s.getProduct_id()}" class="thumbnail" style="height:140px">
						<img src="images/kitchens/${s.getImg()}" alt="${s.getImg()}">
					</a>
					<div>
						<h5 class="text-danger text-center"><a href="#"></a>  ${s.getProduct_name() }</h5>
					</div>
					</div>
				</c:forEach>
			    </div>
			  </div><!--End of 1st Slide-->
			  
			  <div class="item">
				<div class="row">
				<c:forEach items="${products}" var="s" begin="6" end="10">
					<div class="col-md-2">
				
					<a href="ViewProductById?id=${s.getProduct_id()}" class="thumbnail">
						<img src="images/kitchens/${s.getImg()}" alt="${s.getImg()}" style="height:170px;">
					</a>
					<div>
						<h5 class="text-danger text-center"><a href="#"></a> ${s.getProduct_name() }</h5>
					</div>
					</div>
				</c:forEach>
			    </div>
	   		 </div><!--End of 2nd Slide-->
	   		 
			<a class="left carousel-control" href="#myCarousel2" role="button" data-slide="prev">
		      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" href="#myCarousel2" role="button" data-slide="next">
		      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		      <span class="sr-only">Next</span>
		    </a>
  			</div><!-- End of Carousel Inner -->
		</div><!-- End of myCarousel -->	
		</div><!-- End of col-md-9 -->
		
		
		
		
	</div><!--  End of Row -->
</div><!-- End of col-md-12 -->
</div><!--  End of Main Row -->
</div><!-- End of Container Fluid -->


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <script src="js/bootstrap.min.js"></script>
</body>
</html>