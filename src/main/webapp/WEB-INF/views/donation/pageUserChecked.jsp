<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>


<html>
<head>
 <script language="javascript" type="text/javascript" src="resources/js/jquery-3.6.0.min.js"> 
        </script>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Overpass:300,400,400i,600,700"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/animate.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/magnific-popup.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/aos.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/ionicons.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/jquery.timepicker.css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/icomoon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/style.css">
</head>
<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.html">${associationName}</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
					<li class="nav-item"><a href="causes.html" class="nav-link">Causes</a></li>
					<li class="nav-item active"><a href="donate.html"
						class="nav-link">Donate</a></li>
					<li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
					<li class="nav-item"><a href="gallery.html" class="nav-link">Gallery</a></li>
					<li class="nav-item"><a href="event.html" class="nav-link">Events</a></li>
					<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->

	<section class="ftco-section-3 img">

		Vous êtes ${user.firstName} ${user.lastName }

		<p>Pour modifier les dons en cours, merci de contacter
			l'administateur de l'association</p>
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%"
				cellspacing="0">
				<thead>
					<tr>
						<th>Montant :</th>
						<th>Etat du don:</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="donation" items="${donations}">

						<tr>
							<td><c:out value="${ donation.amount }" /></td>
							<td><c:out value="${ donation.state }" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>


<!-- 		<button id="b1">Je souhaite refaire un don pour l'association</button> -->
<!-- 		<script language="javascript" type="text/javascript"> -->

	</script>
		<form name="form" id="form1" action="" method="post">
			<spring:bind path="donation.amount">
				<label for="amount">Montant du don :</label>
				<input id="funding" type="text" name="${status.expression}"
					value="${status.value}">
				<br />
			</spring:bind>

<div hidden>
			<spring:bind  path="user.id">
				<input id="id" type="text" name="${status.expression}"
					value="${status.value}">
				<br />
			</spring:bind>
</div>

			cb :
			<form:radiobutton path="donation.state" value="done" />
			cheque :
			<form:radiobutton path="donation.state" value="inprogress" />

			<input type="Submit" value="Faire un don" />
		</form>

		<a href="${pageContext.request.contextPath}/homePageAssociation/${id}">Retour
			en page principale</a>
	</section>

	<footer class="ftco-footer ftco-section img">
		<div class="overlay"></div>
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-3">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">About Us</h2>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
						<ul
							class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
							<li class="ftco-animate"><a href="#"><span
									class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Recent Blog</h2>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(resources/template_HomePageAssoc/images/image_1.jpg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about</a>
								</h3>
								<div class="meta">
									<div>
										<a href="#"><span class="icon-calendar"></span> July 12,
											2018</a>
									</div>
									<div>
										<a href="#"><span class="icon-person"></span> Admin</a>
									</div>
									<div>
										<a href="#"><span class="icon-chat"></span> 19</a>
									</div>
								</div>
							</div>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(resources/template_HomePageAssoc/images/image_2.jpg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about</a>
								</h3>
								<div class="meta">
									<div>
										<a href="#"><span class="icon-calendar"></span> July 12,
											2018</a>
									</div>
									<div>
										<a href="#"><span class="icon-person"></span> Admin</a>
									</div>
									<div>
										<a href="#"><span class="icon-chat"></span> 19</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="ftco-footer-widget mb-4 ml-md-4">
						<h2 class="ftco-heading-2">Site Links</h2>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">Home</a></li>
							<li><a href="#" class="py-2 d-block">About</a></li>
							<li><a href="#" class="py-2 d-block">Donate</a></li>
							<li><a href="#" class="py-2 d-block">Causes</a></li>
							<li><a href="#" class="py-2 d-block">Event</a></li>
							<li><a href="#" class="py-2 d-block">Blog</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Have a Questions?</h2>
						<div class="block-23 mb-3">
							<ul>
								<li><span class="icon icon-map-marker"></span><span
									class="text">203 Fake St. Mountain View, San Francisco,
										California, USA</span></li>
								<li><a href="#"><span class="icon icon-phone"></span><span
										class="text">+2 392 3929 210</span></a></li>
								<li><a href="#"><span class="icon icon-envelope"></span><span
										class="text">info@yourdomain.com</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">

					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script>
						All rights reserved | This template is made with <i
							class="icon-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>	
	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery-migrate-3.0.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery.easing.1.3.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery.stellar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/aos.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery.animateNumber.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery.timepicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/scrollax.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/google-map.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/main.js"></script>







</body>
</html>