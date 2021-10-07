<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <form:form modelAttribute="association"> --%>
<%-- 	<form:hidden path="id" /> --%>
<%-- 	<form:textarea path="associationName" /> --%>
<%-- </form:form> --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js">
	
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
<title>S'inscrire comme organisateur</title>
</head>
<body id="page-top">
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
	<div class="container">
		<img class="img-fluid" src="${association.photo}" height="50"
			width="50" alt="..." /> <a class="navbar-brand" href="${pageContext.request.contextPath}/template/homePageAssociation/${association.id}">${association.associationName}</a>
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
					href="${pageContext.request.contextPath}/donation/add_donationstdby/${association.id}"
					class="nav-link">Faire un Don</a></li>
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/template/homePageAssociation/${association.id}#events"
					class="nav-link">Evènements</a></li>
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/loginPromoter/${association.id}"
					class="nav-link">Se Connecter</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<section class="ftco-section-3 img"
		style="background-image: url(../resources/template_HomePageAssoc/images/bg_3.jpg);">
	<div class="overlay"></div>

	<div class="container">
		<div class="row d-md-flex">
			<div class="col-md-6 d-flex ftco-animate">
				<div class="img img-2 align-self-stretch"
					style="background-image: url(../resources/template_HomePageAssoc/images/event.jpg);"></div>
			</div>
			<div class="col-md-6 volunteer pl-md-5 ftco-animate">
				<h3 class="mb-3">S'inscrire comme organisateur</h3>
<!-- 				<button class="btn btn-secondary bg-dark mb-3 border-white rounded-pill" id="b1">Je propose une activité</button> -->
				<form id="form1" name="form" action="" class="volunter-form"
					method="post">

					<spring:bind path="user.lastName">
						<label for="lastname"></label>
						<div class="form-group">
							<input id="2" type="text" class="form-control"
								name="${status.expression}" value="${status.value}"
								placeholder="Votre Nom">
						</div>
					</spring:bind>

					<spring:bind path="user.firstName">
						<label for="firstname"></label>
						<div class="form-group">
							<input id="firstname" type="text" class="form-control"
								name="${status.expression}" value="${status.value}"
								placeholder="Votre Prénom">
						</div>
					</spring:bind>

					<spring:bind path="user.email">
						<label for="email"></label>
						<div class="form-group">
							<input id="email" type="text" class="form-control"
								name="${status.expression}" value="${status.value}"
								placeholder="Email">
						</div>
					</spring:bind>

					<spring:bind path="user.age">
						<label for="age"></label>
						<div class="form-group">
							<input id="age" type="text" class="form-control"
								name="${status.expression}" value="${status.value}"
								placeholder="Âge">
						</div>
					</spring:bind>

					<spring:bind path="user.address">
						<label for="address"></label>
						<div class="form-group">
							<input id="address" type="text" class="form-control"
								name="${status.expression}" value="${status.value}"
								placeholder="Adresse">
						</div>
					</spring:bind>

					<spring:bind path="user.complementaryAddress">
						<label for="compAdd"></label>
						<div class="form-group">
							<input id="compAdd" type="text" class="form-control"
								name="${status.expression}" value="${status.value}"
								placeholder="Adresse complémentaire">
						</div>
					</spring:bind>

					<spring:bind path="user.town">
						<label for="town"></label>
						<div class="form-group">
							<input id="town" type="text" class="form-control"
								name="${status.expression}" value="${status.value}"
								placeholder="Ville">
						</div>
					</spring:bind>

					<spring:bind path="user.mobilePhone">
						<label for="mobile"></label>
						<div class="form-group">
							<input id="mobile" type="text" class="form-control"
								name="${status.expression}" value="${status.value}"
								placeholder="Téléphone">
						</div>
					</spring:bind>


					<spring:bind path="promoter.password">
						<label for="password"></label>
						<div class="form-group">
							<input class="form-control" id="password" type="password"
								name="${status.expression}" value="${status.value}"
								placeholder="Mot de passe">
					</spring:bind>
<!-- 					<div id="prom"> -->

<!-- 						<h3 class="mb-3">Détail de l'activité proposée :</h3> -->

<%-- 						<spring:bind path="event.eventName"> --%>
<!-- 							<label for="eventName"></label> -->
<!-- 							<div class="form-group"> -->
<!-- 								<input class="form-control" id="eventName" type="text" -->
<%-- 									name="${status.expression}" value="${status.value}" --%>
<!-- 									placeholder="Nom de l'activité"> -->
<!-- 							</div> -->
<%-- 						</spring:bind> --%>


<%-- 						<spring:bind path="event.eventDescription"> --%>
<!-- 							<label for="eventDescription"></label> -->
<!-- 							<div class="form-group"> -->
<!-- 								<input class="form-control" id="eventDescription" type="text" -->
<%-- 									name="${status.expression}" value="${status.value}" --%>
<!-- 									placeholder="Description de l'activité"> -->
<!-- 							</div> -->
<%-- 						</spring:bind> --%>

<%-- 						<spring:bind path="event.photo"> --%>
<!-- 							<label for="photo"></label> -->
<!-- 							<div class="form-group"> -->
<!-- 								<input class="form-control" id="photo" type="text" -->
<%-- 									name="${status.expression}" value="${status.value}" --%>
<!-- 									placeholder="Image de l'activité"> -->
<!-- 							</div> -->
<%-- 						</spring:bind> --%>
<!-- 					</div> -->

					<div class="form-group">
						<input type="submit" value="S'inscrire"
							class="btn btn-secondary bg-dark mb-3 border-white rounded-pill">
					</div>

				</form>
			</div>
		</div>
	</div>
	</section>


	<script src="<c:out value="../resources/js/jquery.min.js"/>"></script>
	<script
		src="<c:out value="../resources/js/jquery-migrate-3.0.1.min.js"/>"></script>
	<script src="<c:out value="../resources/js/popper.min.js"/>"></script>
	<script src="<c:out value="../resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:out value="../resources/js/jquery.easing.1.3.js"/>"></script>
	<script src="<c:out value="../resources/js/jquery.waypoints.min.js"/>"></script>
	<script src="<c:out value="../resources/js/jquery.stellar.min.js"/>"></script>
	<script src="<c:out value="../resources/js/owl.carousel.min.js"/>"></script>
	<script
		src="<c:out value="../resources/js/jquery.magnific-popup.min.js"/>"></script>
	<script src="<c:out value="../resources/js/aos.js"/>"></script>
	<script
		src="<c:out value="../resources/js/jquery.animateNumber.min.js"/>"></script>
	<script src="<c:out value="../resources/js/bootstrap-datepicker.js"/>"></script>
	<script src="<c:out value="../resources/js/jquery.timepicker.min.js"/>"></script>

	<script src="<c:out value="../resources/js/scrollax.min.js"/>"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>

	<script src="<c:out value="../resources/js/google-map.js"/>"></script>
	<script src="<c:out value="../resources/js/main.js"/>"></script>
	<script language="javascript" type="text/javascript">
		$(document).ready(function() {

			$("#prom").hide();
			$("#b1").click(hide1);
		});

		function hide1() {


			$("#prom").toggle();

		}
	</script>


</body>
</html>