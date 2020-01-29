<%-- <%@ page import="product.ViewProductByCategory" %> --%>
<%@ page import="cart.ShoppingCart" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="custom.css" rel="stylesheet">
	<style>
	#disp
	{
		z-index: 7;
	    position: absolute;
	    
	    top: 54px;
	    left: 32px;
	    padding: 10px;
	    width: 700px;
	    border-radius:5px;
	}
	</style>
	<script type="text/javascript">
	
	</script>
</head>
<body>
<%
/* 	ShoppingCart cart=new ShoppingCart();

	cart=(ShoppingCart)session.getAttribute("cart"); */
	ShoppingCart cart = (ShoppingCart)session.getAttribute("cart");
	// If the user has no cart, create a new one
    if (cart == null) {
    	cart = new ShoppingCart();
        session.setAttribute("cart", cart);
        }
%>
<nav class="navbar navbar-default my-navbar ">
	<div class="container-fluid">
		<div class="row">
			<div class="navbar-header col-md-2">
				<a class="navbar-brand" href="Welcome">Online Shopping</a>
			</div>
			
			<!-- <form role="form"> -->
			<div class="col-md-8">
				<div class="navbar-form">
				<form role="form" name="f1" method="get" action="executecommands.jsp">  
					<div class="form-group">
						<input type="search" class="form-control" id="demo" placeholder="Search for Products,Brands and More" onkeyup="ajaxFunction(this.value)" name="query">
					</div>
				
					<span id="disp" name="disp" style="z-index:7;"></span>
					
					<div class="form-group">
					<button type="submit" class="btn btn-success">
					<span class="glyphicon glyphicon-search"></span>
					</button>
					</div>
				</form>
				</div>
			</div> <!-- end of col-md-5-->
			<div class="col-md-2">
				<a href="CartDetails" class="btn btn-success" id="cart_button"><span class="glyphicon glyphicon-shopping-cart"></span> Cart &nbsp <span class="badge"> <%= cart.getNumberOfItems() %> </span></a>
			<!-- &nbsp &nbsp	<a href="#" class="btn btn-success" id="user"><span class="glyphicon glyphicon-user"></span> Sign In &nbsp</a> -->
			</div>
		</div><!--End of Row1 -->
	</div><!--End of Container -->
</nav><!--End of Nav-->

<script language="javascript">

	function getXMLObject() //XML OBJECT
	{
			var xmlHttp = false;
		try 
		{
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP") // For Old Microsoft Browsers
		}
		catch (e)
		{
			try
			{
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP") // For Microsoft IE 6.0+
			}
			catch (e2) {
				xmlHttp = false // No Browser accepts the XMLHTTP Object then false
			}
		}
		if (!xmlHttp && typeof XMLHttpRequest != 'undefined') {
		xmlHttp = new XMLHttpRequest(); //For Mozilla, Opera Browsers
	}
	return xmlHttp; // Mandatory Statement returning the ajax object created
	}

	var xmlhttp = new getXMLObject();	//xmlhttp holds the ajax object

	function ajaxFunction(a)
	{
		if(a.length>0)
			{
			if(xmlhttp) {
			
						xmlhttp.open("GET","executecommands.jsp?query=" + a); //gettime will be the servlet name
						xmlhttp.onreadystatechange = handleServerResponse;
						
						xmlhttp.send();
					
					}
			}	/* document.getElementById("disp").innerHTML="ex. abc@gmail.com"; */
		document.getElementById("disp").style.backgroundColor = "white";
		var a=document.getElementById("demo").value;
			if(a=="")
			{
			document.getElementById("disp").innerHTML=null;
			document.getElementById("disp").style.backgroundColor="#99003d";
			/* alert("Hello"); */
			/* document.getElementById("disp").value=""; */
			/* document.getElementById("disp").style.backgroundColor = "red"; */
			/* document.getElementById("disp").style.fontSize = "80px"; */
			/* var b=document.getElementById("disp").value;
			b="sumit"; */
			}
	}

	function handleServerResponse() {
			if (xmlhttp.readyState == 4) {
					if(xmlhttp.status == 200) {
		document.getElementById("disp").innerHTML=xmlhttp.responseText;
			
}
else {
alert("Error during AJAX call. Please try again");
}
}
}


</script>

	
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <script src="js/bootstrap.min.js"></script> -->
</body>
</html>