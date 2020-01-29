<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="css/example.css" />
	<!--<link rel="stylesheet" href="css/pygments.css" />-->
	<link rel="stylesheet" href="css/easyzoom.css" />
</head>
<body>

<jsp:include page="main_header.jsp"/>
<jsp:include page="nav.jsp"/>
<div class="container">
</div>

			<!-- Placeholder for demo purposes only -->
			<div style="float: right; width: 310px; height: 400px; background: #EEE;"></div>

			<div class="easyzoom easyzoom--adjacent">
				<a href="example-images/arvind2.jpg">
					<img src="example-images/arvind.jpg" alt="" width="310" height="400" />
				</a>
			</div>

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
</body>
</html>