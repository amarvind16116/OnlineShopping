<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<!-- <link rel="stylesheet" href="css/example.css" /> -->
	<link rel="stylesheet" href="css/easyzoom.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<style type="text/css">
	/* .easyzoom img{height:420px !important;} */
	/* img{height:420px !important; max-width:220px !important; margin:15px;} */
	.buyoption{margin:30px;}
	/* .pic thumbnail{height:20px !important;width:63px !important;} */
	.section .thumbnail{height:430px !important;width:320px;}
	</style>


</head>
<body>
	<%-- <%
	int id=Integer.parseInt(request.getParameter("id"));
	//out.print(id);
	pageContext.setAttribute("id",id);
	%>
	<jsp:include page="/ViewProductById">
		<jsp:param value="${id}" name="id"/>
	</jsp:include> --%>
 	<jsp:include page="main_header.jsp"/>
	<jsp:include page="nav.jsp"/>
	<br/><br/>
	<div class="container-fluid">
	<div class="row">
	<c:forEach items="${item}" var="s">
		<div class="col-md-1 pic" style="width:6%;margin-left:10px;">
			<div class="row thumbnail" style="border:2px solid grey;height:80px;">
				<img src="images/xolo.jpg" style="height:70% !important;" name="xolo.jpg" onClick="changeImage(this)">
			</div>
			<div class="row thumbnail"  style="border:2px solid grey;height:80px;">
				<img src="images/a.jpg" style="height:70% !important;width:63px;" onClick="changeImage(this)">
			</div>
			<div class="row thumbnail" style="border:2px solid grey;height:80px;">
				<img src="images/b.jpg" style="height:70% !important;width:63px;" onClick="changeImage(this)">
			</div>
			<div class="row thumbnail"  style="border:2px solid grey;height:80px;">
				<img src="images/c.jpg" style="height:70% !important;" onClick="changeImage(this)">
			</div>
			<div class="row thumbnail"  style="border:2px solid grey;height:80px;">
				<img src="images/d.jpg" style="height:70% !important;" onClick="changeImage(this)">
			</div>
			<!-- <div class="row thumbnail"  style="border:2px solid grey;height:80px;">
				<img src="images/e.jpg" style="height:70% !important;">
			</div> -->
		</div>
		<div class="col-md-3 section easyzoom easyzoom--adjacent">
			<a href="images/A2.jpg" class="thumbnail">
				<img src="images/${s.getImg() }" style="height:420px;" id="main">
			</a>
		</div>
		
		<div class="col-md-5" style="margin-left:20px;">
			<div class="row">
				<div class="col-md-12">
					<h3>${s.getProduct_name() } </h3>
				</div>
				<div class="col-md-12">
					<h4><span class="label label-success">4.3 &#9734  </span> &nbsp &nbsp 1,43,206 Ratings & 23,151 Reviews</h4>
				</div>
				<div class="col-md-12">
					<h2><i class="fa fa-inr" aria-hidden="true"></i> &nbsp${s.getSell_price() } <small><del>Rs  ${s.getMrp_price() }</del></small></h2>
				</div>
				<div class="col-md-12">
				<h5>EMIs from Rs 388/month</h5>
				<h5>Get upto Rs 7,500 off on exchange</h5>
				<h5>Special PriceGet extra Rs 500 off (price inclusive of discount)T&C</h5>
				</div>
				<!-- <br><br></br></br> -->
				<div class="col-md-12 buyoption">
					<a href="CheckOut" class="btn btn-danger btn-lg">Buy Now</a>
				&nbsp	<a href="Cart?product_id=${s.getProduct_id()}&action=add" class="btn btn-primary btn-lg">Add To Cart</a>
				</div>
				<!-- </br></br><br><br> -->
				<div class="col-md-12">
				Delivery &nbsp &nbsp <input type="search" placeholder="Enter Pincode"><a class="btn btn-default">Check</a>
				</div>
			</div>
		</div>
		
	</c:forEach>
	</div>
	</div>
	
	<script>
	function changeImage(imgElement)
	{
		//var name=imgElement.name;
		var src=imgElement.src;
		document.getElementById("main").src=src;
		//alert(name);
		//alert(src);
	}
	</script>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="dist/easyzoom.js"></script>
	<script>
		// Instantiate EasyZoom instances
		var $easyzoom = $('.easyzoom').easyZoom();

		// Setup thumbnails example
		var api1 = $easyzoom.filter('.easyzoom--with-thumbnails').data('easyZoom');

		$('.thumbnails').on('click', 'a', function(e) {
			var $this = $(this);

			e.preventDefault();

			// Use EasyZoom's `swap` method
			api1.swap($this.data('standard'), $this.attr('href'));
		});

		// Setup toggles example
		var api2 = $easyzoom.filter('.easyzoom--with-toggle').data('easyZoom');

		$('.toggle').on('click', function() {
			var $this = $(this);

			if ($this.data("active") === true) {
				$this.text("Switch on").data("active", false);
				api2.teardown();
			} else {
				$this.text("Switch off").data("active", true);
				api2._init();
			}
		});
	</script>
	

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <script src="js/bootstrap.min.js"></script>
</body>
</html>