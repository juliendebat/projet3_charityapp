<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"
	language="java"%>

<!DOCTYPE html>
<html lang="en">
<html>
<title>Faire un don</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery-3.6.0.min.js">
	
</script>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Overpass:300,400,400i,600,700"
	rel="stylesheet">


<link rel="stylesheet"
	href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/open-iconic-bootstrap.min.css"/>">

<link rel="stylesheet"
	href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/animate.css"/>">
<link rel="stylesheet"
	href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/owl.carousel.min.css"/>">
<link rel="stylesheet"
	href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/owl.theme.default.min.css"/>">

<link rel="stylesheet"
	href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/magnific-popup.css"/>">

<link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/aos.css"/>">

<link rel="stylesheet"
	href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/ionicons.min.css"/>">
<link rel="stylesheet"
	href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/bootstrap-datepicker.css"/>">


<link rel="stylesheet"
	href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/jquery.timepicker.css"/>">
<link rel="stylesheet"
	href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/flaticon.css"/>">
<link rel="stylesheet"
	href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/icomoon.css"/>">

<link href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/style.css"/>" rel="stylesheet" />
<title>S'inscrire comme sponsor</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
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
					href="${pageContext.request.contextPath}/template/homePageAssociation/${association.id}"
					class="nav-link">Accueil</a></li>
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/donation/add_donation/${association.id}"
					class="nav-link">Faire un Don</a></li>
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/template/homePageAssociation/${association.id}#events"
					class="nav-link">Evènements</a></li>
				
			</ul>
		</div>
	</div>
	</nav>
		
	<!-- END nav -->

	<section class="ftco-section-3 img"
		style="background-image: url(${pageContext.request.contextPath}/resources/template_HomePageAssoc/images/bg_3.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row d-md-flex">
				<div class="col-md-6 d-flex ftco-animate">
					<div class="img img-2 align-self-stretch"
						style="background-image: url(${pageContext.request.contextPath}/resources/template_HomePageAssoc/images/bg_4.jpg);"></div>
						
						<div class="row">
							
								<div class="col">
									<div>
									<br/>
									</div>
									<div>
										<br/>
									</div>
									<div>
										<br/>
									</div>
									<div>
									 	<br/>
									</div>
									<div>
									 	<br/>
									</div>
									<div>
									 	<br/>
									</div>
								</div>
							
						</div>
						<div class="row">
							<div class="container">
								<div class="col">
									<div class="center">
									 <h1>${message}</h1>
												<h3>${sum} euros de plus !</h3>
											<h5>Vous pouvez envoyer votre promesse à l'addresse  ${association.address},  ${association.zipCode} ${association.city }</h5>
								
												
									</div>
								</div>
							</div>
						</div>
				</div>
				</div>
				</div>
				<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	</section>

	


	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
        <circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
    </svg>
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