<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="en">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" type="text/javascript"
	src="resources/js/jquery-3.6.0.min.js">
	
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
	href="<c:out value="../resources/css/open-iconic-bootstrap.min.css"/>">

<link rel="stylesheet"
	href="<c:out value="../resources/css/animate.css"/>">
<link rel="stylesheet"
	href="<c:out value="../resources/css/owl.carousel.min.css"/>">
<link rel="stylesheet"
	href="<c:out value="../resources/css/owl.theme.default.min.css"/>">

<link rel="stylesheet"
	href="<c:out value="../resources/css/magnific-popup.css"/>">

<link rel="stylesheet" href="<c:out value="../resources/css/aos.css"/>">

<link rel="stylesheet"
	href="<c:out value="../resources/css/ionicons.min.css"/>">
<link rel="stylesheet"
	href="<c:out value="../resources/css/bootstrap-datepicker.css"/>">


<link rel="stylesheet"
	href="<c:out value="../resources/css/jquery.timepicker.css"/>">
<link rel="stylesheet"
	href="<c:out value="../resources/css/flaticon.css"/>">
<link rel="stylesheet"
	href="<c:out value="../resources/css/icomoon.css"/>">
<link rel="stylesheet"
	href="<c:out value="../resources/css/styles2.css"/>">
<link href="<c:out value="resources/css/styles.css"/>" rel="stylesheet" />
<title>S'inscrire comme bénévole</title>
</head>
<body>
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/homePageAssociation/${association.id}">${association.associationName}</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#ftco-nav" aria-controls="ftco-nav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
		</button>

		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/homePageAssociation/${association.id}"
					class="nav-link">Accueil</a></li>
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/donation/add_donation/${association.id}"
					class="nav-link">Faire un Don</a></li>
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/allEvents/${association.id}"
					class="nav-link">Evenements</a></li>
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/loginUser"
					class="nav-link">Se Connecter</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<section class="ftco-section contact-section ftco-degree-bg" style="background-image:url(../resources/images/bg_2.jpg)">
	<div class="container px-4 px-lg-5">
		<h4 class="text-center mt-0" style="color:white">S'inscrire comme bénévole</h4>
			<hr class="divider" style="height:2px;border-width:0;color: #f86f2d;background-color: #f86f2d;"/>
			<div class="row gx-4 gx-lg-5 justify-content-center mb-5">
            <div class="col-lg-6">
				
				<form action="" method="post">
					<div class="form-group row">
						<spring:bind path="user.lastName">
							<label style="color:white" for="lastname">Nom :</label>
							<div class="col">
							<input class="col" id="lastname " type="text" name="${status.expression}"
								value="${status.value}">
								</div>
							<br />
						</spring:bind>
					</div>
					<div class="form-group row">
						<spring:bind path="user.firstName">
							<label style="color:white" for="firstname">Prénom :</label>
							<div class="col">
							<input class="col" id="firstname" type="text" name="${status.expression}"
								value="${status.value}">
								</div>
							<br />
						</spring:bind>
					</div>
					<div class="form-group row">
						<spring:bind path="user.email">
							<label style="color:white" for="email">Mail :</label>
							<div class="col">
							<input class="col" id="email" type="text" name="${status.expression}"
								value="${status.value}">
								</div>
							<br />
						</spring:bind>
					</div>
					<div class="form-group row">
						<spring:bind path="user.age">
							<label style="color:white" for="age">Age :</label>
							<div class="col">
							<input class="col" id="age" type="text" name="${status.expression}"
								value="${status.value}">
								</div>
							<br />
						</spring:bind>
					</div>
					<div class="form-group row">
						<spring:bind path="user.address">
							<label style="color:white" for="address">Adresse :</label>
							<div class="col">
							<input class="col" id="address" type="text" name="${status.expression}"
								value="${status.value}">
								</div>
							<br />
						</spring:bind>
					</div>
					<div class="form-group row">
						<spring:bind path="user.town">
							<label style="color:white" for="town">Ville :</label>
							<div class="col">
							<input class="col" id="town" type="text" name="${status.expression}"
								value="${status.value}">
								</div>
							<br />
						</spring:bind>
					</div>
					<div class="form-group row">
						<spring:bind path="user.mobilePhone">
							<label style="color:white" for="mobile">Numéro de mobile :</label>
							<div class="col">
							<input class="col" id="mobile" type="text" name="${status.expression}"
								value="${status.value}">
								</div>
							<br />
						</spring:bind>
					</div>
					<div class="form-group row">
						<spring:bind path="user.complementaryAddress">
							<label style="color:white" for="compAdd">Complément d'addresse :</label>
							<div class="col">
							<input class="col" id="compAdd" type="text" name="${status.expression}"
								value="${status.value}">
								</div>
							<br />
						</spring:bind>
					</div>
					<div class="form-group row">
						<spring:bind path="volonteer.dispo">
							<label style="color:white" for="dispo">Disponibilités :</label>
							<div class="col">
							<input class="col" id="dispo" type="text" name="${status.expression}"
								value="${status.value}">
								</div>
							<br />
						</spring:bind>
					</div>
					<div class="form-group row">
						<label style="color:white" for="event">Choix de l'événement :</label> 
						<select class="col mx-3" name="eventList">
							<c:forEach var="event" items="${eventList}">
								<option id="eventName" name="eventName"
									value="${event.eventName}" selected="selected">${event.eventName}</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group row">
						<input type="submit" value="S'inscrire"
							class="btn btn-primary py-2 px-5 col">
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>


	<%-- 	<h1>${headerMessage}</h1> --%>

	<!-- 	<form action="" method="post"> -->

	<%-- 		<spring:bind path="user.lastName"> --%>
	<!-- 			<label for="lastname">Nom :</label> -->
	<%-- 			<input id="lastname " type="text" name="${status.expression}" --%>
	<%-- 				value="${status.value}"> --%>
	<!-- 			<br /> -->
	<%-- 		</spring:bind> --%>
<%-- 	<spring:bind path="user.firstName"> --%>
<!-- 		<label for="firstname">Prénom :</label> -->
<%-- 		<input id="firstname" type="text" name="${status.expression}" --%>
<%-- 			value="${status.value}"> --%>
<!-- 		<br /> -->

<%-- 	</spring:bind> --%>
	<%-- 		<spring:bind path="user.email"> --%>
	<!-- 			<label for="email">Mail :</label> -->
	<%-- 			<input id="email" type="text" name="${status.expression}" --%>
	<%-- 				value="${status.value}"> --%>
	<!-- 			<br /> -->
	<%-- 		</spring:bind> --%>

	<%-- 		<spring:bind path="user.age"> --%>
	<!-- 			<label for="age">Age :</label> -->
	<%-- 			<input id="age" type="text" name="${status.expression}" --%>
	<%-- 				value="${status.value}"> --%>
	<!-- 			<br /> -->
	<%-- 		</spring:bind> --%>

	<%-- 		<spring:bind path="user.address"> --%>
	<!-- 			<label for="adress">Adresse :</label> -->
	<%-- 			<input id="address" type="text" name="${status.expression}" --%>
	<%-- 				value="${status.value}"> --%>
	<!-- 			<br /> -->
	<%-- 		</spring:bind> --%>

	<%-- 		<spring:bind path="user.town"> --%>
	<!-- 			<label for="town">Ville :</label> -->
	<%-- 			<input id="town" type="text" name="${status.expression}" --%>
	<%-- 				value="${status.value}"> --%>
	<!-- 			<br /> -->
	<%-- 		</spring:bind> --%>


	<%-- 		<spring:bind path="user.mobilePhone"> --%>
	<!-- 			<label for="mobile">Numéro de mobile :</label> -->
	<%-- 			<input id="mobile" type="text" name="${status.expression}" --%>
	<%-- 				value="${status.value}"> --%>
	<!-- 			<br /> -->
	<%-- 		</spring:bind> --%>

	<%-- 		<spring:bind path="user.complementaryAddress"> --%>
	<!-- 			<label for="compAdd">Complément d'addresse :</label> -->
	<%-- 			<input id="compAdd" type="text" name="${status.expression}" --%>
	<%-- 				value="${status.value}"> --%>
	<!-- 			<br /> -->
	<%-- 		</spring:bind> --%>

	<%-- 		<spring:bind path="volonteer.dispo"> --%>
	<!-- 			<label for="dispo">Disponibilités :</label> -->
	<%-- 			<input id="dispo" type="text" name="${status.expression}" --%>
	<%-- 				value="${status.value}"> --%>
	<!-- 			<br /> -->
	<%-- 		</spring:bind> --%>

	<!-- 		<select name="eventList"> -->

	<%-- 			<c:forEach var="event" items="${eventList}"> --%>
	<!-- 					<option id="eventName" name="eventName" -->
	<%-- 						value="${event.eventName}" selected="selected">${event.eventName}</option> --%>
	<%-- 				</c:forEach> --%>

	<!-- 		</select> -->

	<!-- 		<input type="submit" value="Create" /> -->
	<!-- 	</form> -->

	<!-- loader -->
<!-- 	<div id="ftco-loader" class="show fullscreen"> -->
<!-- 		<svg class="circular" width="48px" height="48px"> -->
<%-- 		<circle class="path-bg" cx="24" cy="24" r="22" fill="none" --%>
<%-- 			stroke-width="4" stroke="#eeeeee" /> --%>
<%-- 		<circle class="path" cx="24" cy="24" r="22" fill="none" --%>
<%-- 			stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg> --%>
<!-- 	</div> -->


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