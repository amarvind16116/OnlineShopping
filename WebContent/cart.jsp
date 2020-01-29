<%@ page import="cart.ShoppingCart"%>
<%@ page import="cart.ShoppingCartItem"%>
<%@ page import="beans.Product"%>
<%@ page import="java.util.Iterator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body{background-color:#f2f2f2 !important;}
.col1{background-color:white;margin-top:15px;margin-left:-50px;padding:10px;min-height:200px;}
.col2{background-color:white;margin-top:15px;margin-left:25px;padding:20px;}
.thumbnail{border: none !important;;}
input[type="search"]{padding:5px;}
.glyphicon .glyphicon-plus{color:black;background-color:black;}
.alert-danger{position:absolute;z-index:2;top:56%;left:34%;background-color:white !important;border:none !important;}
</style>
</head>
<body>

<%
	/* ShoppingCart obj=new ShoppingCart(); */

	ShoppingCart obj=(ShoppingCart)session.getAttribute("cart");
%>

	<jsp:include page="main_header.jsp"/>
	<jsp:include page="nav.jsp"/>
<div class="container cart">
<div class="col-md-8 col1">
	<div class="row">
		<div class="col-md-6">
			<b>My CART ( <%= obj.getNumberOfItems() %> )</b>
		</div>
		<div class="col-md-6">
			Delivery &nbsp &nbsp <input type="search" placeholder="Enter Pincode"><a class="btn btn-danger">Check</a>
		</div>
	</div>
	<hr>
	<%-- <c:forEach items="${product}" var="s">
	<div class="row">
		<div class="col-md-2">
			<div class="thumbnail">
				<img src="images/${s.getImg() }" style="width:60px;height:110px;">
			</div>
		</div>
		<div class="col-md-5">
			<h4>${s.getProduct_name() }</h4>
			<h3>Rs ${s.getSell_price() } <small><del>Rs  ${s.getMrp_price() }</del></small></h3>
		</div>
		<div class="col-md-5 text-right">
			<h5>Free Delivery in 3-4 days</h5>
			<h5><small>10 Days Replacement Policy</small></h5>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		<span class="glyphicon glyphicon-plus"></span> &nbsp
			<input type="number" value="1" style="width:40px;">&nbsp
			<span class="glyphicon glyphicon-minus"></span>
		</div>
		<div class="col-md-5">
		<a href="ShowCartServlet?id=${s.getProduct_id()}&action=delete" class="btn btn-danger">REMOVE</a>
		</div>
	</div>
	<hr>
	</c:forEach> --%>
	
	
	
	
	
	
	
	
	
	
	
	
	<%
      	Iterator itr=obj.getItems().iterator(); 
      	int SNO=0;
      	while (itr.hasNext()) {
            ShoppingCartItem item = (ShoppingCartItem) itr.next();
            Product prod1 = (Product) item.getItem();
            SNO++;
         %>
	<% System.out.println(item.getQuantity());%>
	<div class="row">
		<div class="col-md-2">
			<div class="thumbnail">
				<img src="images/<% out.println(prod1.getImg());%>" style="width:60px;height:110px;">
			</div>
		</div>
		<div class="col-md-5">
			<h4><% out.println(prod1.getProduct_name());%></h4>
			<h3><i class="fa fa-inr" aria-hidden="true"></i> <% out.println(prod1.getSell_price());%> <small><del>Rs  <% out.println(prod1.getMrp_price());%></del></small></h3>
		</div>
		<div class="col-md-5 text-right">
			<h5>Free Delivery in <% out.println(prod1.getDtime()+" - "+(prod1.getDtime()+1));%><!-- 3-4 --> days</h5>
			<h5><small>10 Days Replacement Policy</small></h5>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		<a href="Cart?product_id=<%= prod1.getProduct_id() %>&action=add"><span class="glyphicon glyphicon-plus"></span></a> &nbsp
			<input type="number" class="text-center" value=<% out.println(item.getQuantity());%> style="width:40px;" disabled>&nbsp
		<a href="Cart?product_id=<%= prod1.getProduct_id() %>&action=remove"><span class="glyphicon glyphicon-minus"></span></a>
		</div>
		<div class="col-md-5">
		<a href="Cart?product_id=<% out.println(prod1.getProduct_id());%>&action=remove" class="btn btn-danger">REMOVE</a>
		</div>
	</div>
	<hr>
	<%
      	}
      	%>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<div class="col-md-12 text-right">
		<a href="index1.jsp"class="btn btn-success btn-lg">Continue Shopping</a> &nbsp &nbsp
		<a href="CheckOut.jsp" class="btn btn-info btn-lg">Place Order</a>
	</div>
</div> <!-- End of col-md-8 -->
<div class="col-md-4 col2">
	<div class="row">
		<div class="col-md-12">
			<b> PRICE DETAILS </b>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-md-12">
			<h5><font> PRICE (<%= obj.getNumberOfItems() %> Items) </font><font class="pull-right"><i class="fa fa-inr" aria-hidden="true"></i> <%= obj.getTotal() %> </font></h5>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<h5><font> Delivery Charges </font><font class="pull-right"> <font class="text-info">FREE</font> </font></h5>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-md-12">
			<h5><font> <b>Amount Payable</b> </font><font class="pull-right"><i class="fa fa-inr" aria-hidden="true"></i> <%= obj.getTotal() %> </font></h5>
		</div>
	</div>
	<hr>
</div>

</div><!-- End of Container -->
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>