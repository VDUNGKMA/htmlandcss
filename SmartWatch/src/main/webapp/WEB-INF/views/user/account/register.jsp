<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<body>
	<title>Nguời dùng</title>
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
					<h5>CREATE YOUR ACCOUNT</h5>
				
					<br />
					<form:form action="Signup" method="POST" modelAttribute="user">  
						<div class="control-group">
							<label class="control-label" for="inputEmail">E-mail
								address</label>
							<div class="controls">
								<i class="fa fa-envelope" style="font-size:23px;color:black"></i>
								<form:input type="email" class="span3" placeholder="Email" path="user" />  
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputEmail">Password</label>
							<div class="controls">
							 <i class="fa fa-key icon" style="font-size:23px;color:black"></i>
								<form:input type="password" class="span3" placeholder="Password" path="password" /> 
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputEmail">Name</label>
							<div class="controls">
								<i class="fa fa-user icon" style="font-size:23px;color:black"></i>
								<form:input type="text" class="span3" placeholder="Name" path="display_name" />
								
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputEmail">Address</label>
							<div class="controls">
								<i class="fas fa-address-card" style="font-size:23px;color:black"></i>
								<form:input type="text" class="span3" placeholder="Address" path="Address" />
							</div>
						</div>
						<div class="controls">
							<button type="submit" class="btn block">Create Your
								Account</button>
						</div>
					</form:form>
				</div>
			</div>
			<div class="span1">&nbsp;</div>
			<div class="span4"style="width: 500px">
				<div class="well">
					<h5>ALREADY REGISTERED ?</h5>
					<h3 style="color: red">${ statusLogin }</h3>
					<form:form action="Signin" method="POST" modelAttribute="user">  
						<div class="control-group">
							<label class="control-label" for="inputEmail">Email</label>
							<div class="controls">
							<i class="fa fa-envelope" style="font-size:23px;color:black"></i>
								<form:input type="email" class="span3" placeholder="Email" path="user" /> 
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputPassword">Password</label>
							<div class="controls">
							<i class="fa fa-key" style="font-size:23px;color:black"></i>
								<form:input type="password" class="span3" placeholder="Password" path="password" />
							</div>
						</div>
						<div class="control-group">
							<div class="controls">
								<button type="submit" class="defaultBtn">Sign in</button>
								<a href="#">Forget password?</a>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>

	</div>
	</div>

	<!-- Placed at the end of the document so the pages load faster -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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