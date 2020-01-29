<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

  </style>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>BootStore</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="customs.css" rel="stylesheet">
	
</head>
<body  onload="myFunction()">


<div class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="row">
			<div class="navbar-header col-md-2">
				<a class="navbar-brand" href="index.jsp"> &nbsp &nbsp &nbsp &nbsp Admin Panel</a>
			</div>
			<div>
      			<ul class="nav navbar-nav navbar-right">
        			<li><a href="#"><span class="glyphicon glyphicon-home"></span> Home</a></li>
        			<li><a href="lgout"><span class="glyphicon glyphicon-log-in"></span> Log Out &nbsp &nbsp &nbsp </a></li>
      			</ul>
    		</div>
		</div><!--End of Row1 -->
	</div><!--End of Container -->
</div><!--End of Nav-->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
    <script>
    	function myFunction()
    	{
    		//var a=document.getElementById("c").value;
    		//document.getElementById("cart").value=a;
    		//alert(a);
    	}
    </script>
</body>
</html>