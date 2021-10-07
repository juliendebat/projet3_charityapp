<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="en">
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
<title>S'inscrire comme bénévole</title>
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
						style="background-image: url(../resources/template_HomePageAssoc/images/volonteer.jpg);"></div>
				</div>
				<div class="col-md-6 volunteer pl-md-5 ftco-animate">
					<h3 class="mb-3">S'inscrire comme bénévole</h3>
					<form id="form1" name="form" action="" class="volunter-form"
						method="post">

						<spring:bind path="user.lastName">
							<label hidden id="1" for="lastname"></label>
							<div class="form-group">
								<input id="2" type="text" class="form-control"
									name="${status.expression}" value="${status.value}"
									placeholder="Votre Nom">
							</div>
						</spring:bind>

						<spring:bind path="user.firstName">
							<label hidden id="3" for="firstname"></label>
							<div class="form-group">
								<input id="firstname" type="text" class="form-control"
									name="${status.expression}" value="${status.value}"
									placeholder="Votre Prénom">
							</div>
						</spring:bind>

						<spring:bind path="user.email">
							<label hidden for="email"></label>
							<div class="form-group">
								<input id="email" type="text" class="form-control"
									name="${status.expression}" value="${status.value}"
									placeholder="Email">
							</div>
						</spring:bind>

						<spring:bind path="user.age">
							<label hidden id="5" for="age"></label>
							<div class="form-group">
								<input id="age" type="text" class="form-control"
									name="${status.expression}" value="${status.value}"
									placeholder="Âge">
							</div>
						</spring:bind>

						<spring:bind path="user.address">
							<label hidden id="7" for="address"></label>
							<div class="form-group">
								<input id="address" type="text" class="form-control"
									name="${status.expression}" value="${status.value}"
									placeholder="Adresse">
							</div>
						</spring:bind>

						<spring:bind path="user.complementaryAddress">
							<label hidden id="10" for="compAdd"></label>
							<div class="form-group">
								<input id="compAdd" type="text" class="form-control"
									name="${status.expression}" value="${status.value}"
									placeholder="Adresse complémentaire">
							</div>
						</spring:bind>

						<spring:bind path="user.town">
							<label hidden id="8" for="town"></label>
							<div class="form-group">
								<input id="town" type="text" class="form-control"
									name="${status.expression}" value="${status.value}"
									placeholder="Ville">
							</div>
						</spring:bind>

						<spring:bind path="user.mobilePhone">
							<label hidden id="9" for="mobile"></label>
							<div class="form-group">
								<input id="mobile" type="text" class="form-control"
									name="${status.expression}" value="${status.value}"
									placeholder="Téléphone">
							</div>
						</spring:bind>

						<spring:bind path="volonteer.dispo">
							<label for="dispo"></label>
							<div class="form-group">
								<input class="form-control" id="dispo" type="text"
									name="${status.expression}" value="${status.value}"
									placeholder="Disponibilités">
							</div>
						</spring:bind>


						<label for="event"></label>
						<div class="form-group">
							<select class="form-control" name="eventList">
								<c:forEach var="event" items="${eventList}">
									<option id="eventName" name="eventName"
										value="${event.eventName}" selected="selected">${event.eventName}</option>
								</c:forEach>
							</select>
						</div>

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
</body>
</html>