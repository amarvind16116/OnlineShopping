<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="custom.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="row">
			<div class="navbar-header col-md-2">
				<a class="navbar-brand" href="index.jsp">Online Shopping</a>
			</div>
			
			<!-- <form role="form"> -->
			<div class="col-md-8">
				<div class="navbar-form">  
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search for Products,Brands and More">
					</div>
					<div class="form-group">
					<button type="submit" class="btn btn-success">
					<span class="glyphicon glyphicon-search"></span>
					</button>
					</div>
				</div>
			</div> <!-- end of col-md-5-->
			<div class="col-md-2">
				<button href="#" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span> Cart &nbsp <span class="badge">5</span></button>
			</div>
		</div><!--End of Row1 -->
	</div><!--End of Container -->
</nav><!--End of Nav-->
<div class="container-fluid">
<div class="row">
<div class="menu col-md-12">
			<ul class="nav navbar-nav">
				<!-- <li class="active"> <a href="#">Home </a></li> -->
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-book"></span> Electronics<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="fiction.jsp">Fiction</a></li>
							<li><a href="romance.jsp">Romance</a></li>
							<li><a href="#">Adventure</a></li>
							<li><a href="thriller.jsp">Thriller</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-book"></span> Appliances<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="fiction.jsp">Fiction</a></li>
							<li><a href="romance.jsp">Romance</a></li>
							<li><a href="#">Adventure</a></li>
							<li><a href="thriller.jsp">Thriller</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-book"></span> Men<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="fiction.jsp">Fiction</a></li>
							<li><a href="romance.jsp">Romance</a></li>
							<li><a href="#">Adventure</a></li>
							<li><a href="thriller.jsp">Thriller</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-book"></span> Women<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="fiction.jsp">Fiction</a></li>
							<li><a href="romance.jsp">Romance</a></li>
							<li><a href="#">Adventure</a></li>
							<li><a href="thriller.jsp">Thriller</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-book"></span> Baby & Kids<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="fiction.jsp">Fiction</a></li>
							<li><a href="romance.jsp">Romance</a></li>
							<li><a href="#">Adventure</a></li>
							<li><a href="thriller.jsp">Thriller</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-book"></span> Home & Furnitures <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="fiction.jsp">Fiction</a></li>
							<li><a href="romance.jsp">Romance</a></li>
							<li><a href="#">Adventure</a></li>
							<li><a href="thriller.jsp">Thriller</a></li>
						</ul>
					</li>
			</ul>
</div>
</div>
</div>


<div class="row">
	<div class="col-md-12">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
    		<!-- Indicators -->
			    <ol class="carousel-indicators">
			      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			      <li data-target="#myCarousel" data-slide-to="1"></li>
			      <li data-target="#myCarousel" data-slide-to="2"></li>
			      <li data-target="#myCarousel" data-slide-to="3"></li>
			    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="images/3736e0.jpg" alt="Chania" width="250px" height="250px">
        <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>

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
	</div>
</div>
</div>


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>