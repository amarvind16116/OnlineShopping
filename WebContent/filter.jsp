<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<style type="text/css">
	.filter{width:300px;height:100%;background--color:white;}
	body{background-color:#f2f2f2 !important;}
	.filter .panel-heading{background-color:white !important;padding:18px;}
	/* .list-group li:nth-child(1){border-top: 0 none !important;} */
	.filter .collapse li{border-top: 0 none !important;}
	</style>
</head>
<body>
<div class="filter">
<div class="panel panel-default">
	<div class="panel-heading">
			<font size=4>F i l t e r s</font>
	</div>
	<div class="panel-heading">
			Brands<span class="glyphicon glyphicon-chevron-down pull-right" data-toggle="collapse" data-target="#demo">
	</div>
   	<div class="collapse" id="demo" class="list-group" >
   		
   		<li class="list-group-item"><a href="ViewProductByBrand?brand=Samsung">Samsung</a></li>
   		<li class="list-group-item"><a href="ViewProductByBrand?brand=Xiaomi">Xiaomi</a></li>
   		<li class="list-group-item"><a href="ViewProductByBrand?brand=Apple">Apple</a></li>
   		<li class="list-group-item"><a href="ViewProductByBrand?brand=Oppo">Oppo</a></li>
   		<li class="list-group-item"><a href="ViewProductByBrand?brand=Motorola">Motorola</a></li>
   		<li class="list-group-item"><a href="ViewProductByBrand?brand=Lenovo">Lenovo</a></li>
   		<li class="list-group-item"><a href="ViewProductByBrand?brand=Vivo">ViVo</a></li>
   	</div>
   	
   	<div class="panel-heading">
			Ram<span class="glyphicon glyphicon-chevron-down pull-right" data-toggle="collapse" data-target="#demo1">
	</div>
   	<div id="demo1" class="collapse" class="list-group">
   		
   		<li class="list-group-item"><a> 2 GB</a></li>
   		<li class="list-group-item"><a> 4 GB</a></li>
   		<li class="list-group-item"><a> 6 GB</a></li>
   	</div>
   	
   	<div class="panel-heading">
			Operating System<span class="glyphicon glyphicon-chevron-down pull-right" data-toggle="collapse" data-target="#demo2">
	</div>
   	<div id="demo2" class="collapse" class="list-group nounderline" >
   		
   		<li class="list-group-item"><a> Android</a></li>
   		<li class="list-group-item"><a> IOS</a></li>
   		<li class="list-group-item"><a> Windows</a></li>
   	</div>
   	
   	<div class="panel-heading">
			Internal Storage<span class="glyphicon glyphicon-chevron-down pull-right" data-toggle="collapse" data-target="#demo3">
	</div>
   	<div id="demo3" class="collapse" class="list-group">
   		
   		<li class="list-group-item"><a> 8 GB</a></li>
   		<li class="list-group-item"><a> 16 GB</a></li>
   		<li class="list-group-item"><a> 32 GB</a></li>
   		<li class="list-group-item"><a> 64 GB</a></li>
   	</div>
   	
   	<div class="panel-heading">
			Processor Brand<span class="glyphicon glyphicon-chevron-down pull-right" data-toggle="collapse" data-target="#demo4">
	</div>
   	<div id="demo4" class="collapse" class="list-group">
   		
   		<li class="list-group-item"><a> 8 GB</a></li>
   		<li class="list-group-item"><a> 16 GB</a></li>
   		<li class="list-group-item"><a> 32 GB</a></li>
   		<li class="list-group-item"><a> 64 GB</a></li>
   	</div>
   	
   	<div class="panel-heading">
			Screen Size<span class="glyphicon glyphicon-chevron-down pull-right" data-toggle="collapse" data-target="#demo5">
	</div>
   	<div id="demo5" class="collapse" class="list-group">
   		
   		<li class="list-group-item"><a> 2 GB</a></li>
   		<li class="list-group-item"><a> 4 GB</a></li>
   		<li class="list-group-item"><a> 6 GB</a></li>
   	</div>
   	
   	<div class="panel-heading">
			Battery Capacity<span class="glyphicon glyphicon-chevron-down pull-right" data-toggle="collapse" data-target="#demo6">
	</div>
   	<div id="demo6" class="collapse" class="list-group">
   		
   		<li class="list-group-item"><a> 2 GB</a></li>
   		<li class="list-group-item"><a> 4 GB</a></li>
   		<li class="list-group-item"><a> 6 GB</a></li>
   	</div>
   	
   	<div class="panel-heading">
			Network Type<span class="glyphicon glyphicon-chevron-down pull-right" data-toggle="collapse" data-target="#demo7">
	</div>
   	<div id="demo7" class="collapse" class="list-group">
   		
   		<li class="list-group-item"><a> 2G</a></li>
   		<li class="list-group-item"><a> 3G</a></li>
   		<li class="list-group-item"><a> 4G</a></li>
   		<li class="list-group-item"><a> 4G Volte</a></li>
   	</div>
   	
   	<div class="panel-heading">
			Resolution Type<span class="glyphicon glyphicon-chevron-down pull-right" data-toggle="collapse" data-target="#demo8">
	</div>
   	<div id="demo8" class="collapse" class="list-group">
   		
   		<li class="list-group-item"><a> Full HD</a></li>
   		<li class="list-group-item"><a> Full HD+</a></li>
   		<li class="list-group-item"><a> FWVGA </a></li>
   		<li class="list-group-item"><a> HD </a></li>
   		<li class="list-group-item"><a> HQVGA </a></li>
   		<li class="list-group-item"><a> HVGA </a></li>
   	</div>
  
</div>
</div>

</body>
</html>