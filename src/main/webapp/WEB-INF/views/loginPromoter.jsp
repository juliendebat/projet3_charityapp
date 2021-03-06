<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Connexion Organisateur</title>
<meta charset="utf-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
		<img class="img-fluid" src="${association.photo}" height="50"
			width="50" alt="..." /> <a class="navbar-brand" href="#page-top">${association.associationName}</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#ftco-nav" aria-controls="ftco-nav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
		</button>

		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/template/homePageAssociation/${id}"
					class="nav-link">Accueil</a></li>
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/donation/add_donation/${id}"
					class="nav-link">Faire un Don</a></li>
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/homePageAssociation/#events"
					class="nav-link">Ev??nements</a></li>
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/loginUser"
					class="nav-link">Se Connecter</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- END nav -->

	<section class="ftco-section-3 img"
		style="background-image: url(resources/template_HomePageAssoc/images/bg_3.jpg);">
		<div class="overlay"></div>


		<div class="container">
			<div class="row d-md-flex">
				<div class="col-md-6 d-flex ftco-animate">
					<div class="img img-2 align-self-stretch"
						style="background-image: url(../resources/images/donation.jpg);"></div>
				</div>
				<div class="col-md-6 volunteer pl-md-5 ftco-animate">
					<h3 class="mb-3">Acc??s Organisateurs</h3>
					
					<form  name="contactForm" action="" class="volunter-form"
						method="post">

						
							<label  for="lastname"></label>
							<div class="form-group">
								<input id="email" type="text" class="form-control"
									name="email" placeholder="Email de l'organisateur">
							</div>
					

						
							<label  for="firstname"></label>
							<div class="form-group">
								<input id="mdp" type="password" class="form-control"
									
									placeholder="Mot de passe">
							</div>
						


					</form>
					
						<div class="form-group">
							<input type="submit" id="btn" value="Acc??der ?? ma page"
								class="btn btn-white py-3 px-5">
						</div>
					<div id="div2" style="color: #ff0000"></div>
				
				<script>
				
					$(document).ready(function(){
						$("#btn").click(function(){
							var  email = document.contactForm.email.value;
							var  mdp =document.contactForm.mdp.value;
							var id = ${id};
									
							$.ajax(
									{
										url: "${pageContext.request.contextPath}/checkEmailAndPasswordPromoter",
										type: "POST",
										data: {
								            "id":id,
											"email":email,
											"mdp":mdp
										},
										success: function(result)
										{
											if(result=="success"){
																					
												var successUrl ="${pageContext.request.contextPath}/dashboardPromoter/home";
												window.location.href = successUrl;   
											}
											else {console.log("fonction error");
												$("#div2").text("Identifiant et/ou Mot de passe incorrect. Merci de r??essayer.");  
											}
										}	
										
									});
						});
					});
				</script>
				</div>
			</div>
		</div>
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