<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<body>
	<title>Thanh toán</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="shortcut icon"
		href=<c:url value="/assets/user/images/favicon.png"/>
		type="image/x-icon">
	<meta charset="utf-8">
	<!-- Bootstrap styles -->

	<link href=<c:url value="/assets/user/css/cssGrid/bootstrap.css"/>
		rel="stylesheet" />


	<!-- Customize styles -->
	<!-- font awesome styles -->
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
		integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link href=<c:url value="/assets/user/css/cssGrid/styleGrid.css"/>
		rel="stylesheet" />

	<!-- Favicons -->
	<link rel="shortcut icon"
		href=<c:url value="/assets/user/ico/favicon.ico"/>>



	<div class="span9">
		<ul class="breadcrumb">
			<li><a href="index.html">Home</a> <span class="divider">/</span></li>
			<li class="active">Login</li>
		</ul>
		<h3>Login</h3>
		<hr class="soft" />

		<div class="row">
			<div class="span4" style="width: 500px">
				<div class="well">
					<br />
					<form:form action="checkout" method="post" modelAttribute="bills" class="form-horizontal">
							<h3>Your Billing Details</h3>
							<div class="control-group">
								<label class="control-label">Name <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" placeholder="Name" path="display_name" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Email<sup>*</sup></label>
								<div class="controls">
									<form:input type="text" placeholder="Email" path="user" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Contact <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" placeholder="Number phone" path="phone" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Address <sup>*</sup></label>
								<div class="controls">
									<form:textarea path="address" row="5" cols="30"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Note <sup>*</sup></label>
								<div class="controls">
									<form:textarea path="note" row="5" cols="30"/>
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<input type="submit" name="submitAccount" value="Register"
										class="shopBtn exclusive">
								</div>
							</div>
						</form:form>
				</div>
			</div>
			<div class="span1">&nbsp;</div>
		</div>

	</div>
	</div>

	<!-- Placed at the end of the document so the pages load faster -->
	<script src=<c:url value="/assets/user/js/js/jsGrid/jquery.js"/>></script>
	<script src=<c:url value="/assets/user/js/js/bootstrap.min.js"/>></script>
	<script
		src=<c:url value="/assets/user/js/js/jsGrid/jquery.easing-1.3.min.js"/>></script>
	<script
		src=<c:url value="/assets/user/js/js/jsGrid/jquery.scrollTo-1.4.3.1-min.js"/>></script>
	<script src=<c:url value="/assets/user/js/js/jsGrid/shop.js"/>></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>