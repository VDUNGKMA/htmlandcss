<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="hero_area">
	<div class="hero_social">
		<a href="https://www.facebook.com/"> <i class="fa fa-facebook"
			aria-hidden="true"></i>
		</a> <a href="https://twitter.com/?lang=vi"> <i class="fa fa-twitter"
			aria-hidden="true"></i>
		</a> <a href="https://www.linkedin.com/"> <i class="fa fa-linkedin"
			aria-hidden="true"></i>
		</a> <a href="https://www.instagram.com/"> <i class="fa fa-instagram"
			aria-hidden="true"></i>
		</a>
	</div>
	<!-- header section strats -->
	<header class="header_section">
		<div class="container-fluid">
			<nav class="navbar navbar-expand-lg custom_nav-container ">
				<a class="navbar-brand" href="<c:url value="/" />"> <span>
						SMARTWATCH SHOP </span>
				</a>

				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class=""> </span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="nav navbar-nav">
						<c:forEach var="item" items="${ menus }" varStatus="index">
							<c:if test="${ not index.first }">
								<li class="nav-item" />
							</c:if>
							<c:if test="${ index.first }">
								<li class="nav-item active" />
							</c:if>
							<c:if test="${ item.id==2 }">
								<a class="nav-link active" href='<c:url value="/products"/>'>
									${ item.name }</a>
							</c:if>
							<c:if test="${ item.id==1 }">
								<a class="nav-link active" href='<c:url value="/"/>'> ${ item.name }</a>
							</c:if>
							<c:if test="${ item.id==4 }">
								<a class="nav-link active" href="#contact"> ${ item.name }</a>
							</c:if>
							<c:if test="${ item.id==3 }">
								<a class="nav-link active" href="#description"> ${ item.name }</a>
							</c:if>
						</c:forEach>
					</ul>
					<div class="user_option-box">
						<c:if test="${ empty LoginInfo }">
							<a href="<c:url value="/Signup"/>"> <i class="fa fa-user"
								aria-hidden="true"></i>
						</c:if>
						<c:if test="${ not empty LoginInfo }">
							<a href="#"> <i class="fa fa-user" aria-hidden="true"></i> ${ LoginInfo.display_name }
							</a>
							<a href="<c:url value="/Logout"/>"> <i class="fa fa-sign-out"
								aria-hidden="true"></i>
						</c:if>
						<a href="<c:url value="/ListCart"/>"><span
							class="fa fa-cart-plus"></span> ${ TotalQuantyCart } </a> - <span
							class="badge badge-warning"> <fmt:formatNumber
								type="number" groupingUsed="true" />${ TotalPriceCart }₫</span></a> </a> <a
							href=""> <i class="fa fa-search" aria-hidden="true"></i>
						</a>

					</div>
				</div>
			</nav>
		</div>
	</header>
	<!-- end header section -->