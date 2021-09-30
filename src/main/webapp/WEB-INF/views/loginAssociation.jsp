<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Charity Raise - Plateforme de Gestion de Dons
	évènementiel pour les associations</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="<c:out value="resources/assets/favicon.ico"/>" />
<!-- Bootstrap Icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />
<!-- SimpleLightbox plugin CSS-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="<c:out value="resources/css/styles.css"/>" rel="stylesheet" />

</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
		id="mainNav">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="#page-top">Charity Raise</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto my-2 my-lg-0">
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/home">Accueil</a></li>
					<li class="nav-item"><a class="nav-link" href="#services">Associations</a></li>
					<li class="nav-item"><a class="nav-link" href="#subscribe">S'inscrire</a></li>
					<li class="nav-item"><a class="nav-link" href="#portfolio">Se
							Connecter</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Subscribe-->
	<section class="page-section" id="subscribe">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-lg-8 col-xl-6 text-center">
					<h2 class="mt-0">Créez votre plateforme de gestion de dons
						événementiel !</h2>
					<hr class="divider" />
					<p class="text-muted mb-5">Prêt à démarrer votre prochain
						projet avec nous ? Remplissez le formulaire et commencez dès
						aujourd'hui à gérez votre plateforme !</p>
				</div>
			</div>
			<div class="row gx-4 gx-lg-5 justify-content-center mb-5">

				<div class="col-lg-6">
					<!-- * * * * * * * * * * * * * * *-->
					<!-- * * SB Forms Contact Form * *-->
					<!-- * * * * * * * * * * * * * * *-->
					<!-- This form is pre-integrated with SB Forms.-->
					<!-- To make this form functional, sign up at-->
					<!-- https://startbootstrap.com/solution/contact-forms-->
					<!-- to get an API token!-->
					<form id="contactForm" method="post" action="">
						<!-- Email Admin input-->
						<div class="form-floating mb-3">
							<spring:bind path="loginAssociation.email">
								<input class="form-control" id="email" type="text"
									name="${status.expression}" value="${status.value}"
									placeholder="association@example.com"
									data-sb-validations="required,email" />
								<label for="email">Email de l'association*</label>
								<div class="invalid-feedback" data-sb-feedback="email:required">Un
									email est requis.</div>
								<div class="invalid-feedback" data-sb-feedback="email:email">l'email
									n'est pas valide.</div>
							</spring:bind>
						</div>
						<!--Admin password input-->
						<div class="form-floating mb-3">
							<spring:bind path="loginAssociation.password">
								<input class="form-control" id="mdp" type="password"
									name="${status.expression}" value="${status.value}"
									placeholder="Enter admin password..."
									data-sb-validations="required" />
								<label for="mpd">Mot de passe de l'administrateur*</label>
								<div class="invalid-feedback"
									data-sb-feedback="password:required">le mot de passe de
									l'administrateur est requis.</div>
								<div class="invalid-feedback"
									data-sb-feedback="password:password">le mot de passe
									n'est pas valide.</div>
							</spring:bind>
						</div>
						<!-- Submit success message-->
						<!---->
						<!-- This is what your users will see when the form-->
						<!-- has successfully submitted-->
						<div class="d-none" id="submitSuccessMessage">
							<div class="text-center mb-3">
								<div class="fw-bolder">Form submission successful!</div>
								To activate this form, sign up at <br /> <a
									href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
							</div>
						</div>
						<!-- Submit error message-->
						<!---->
						<!-- This is what your users will see when there is-->
						<!-- an error submitting the form-->
						<div class="d-none" id="submitErrorMessage">
							<div class="text-center text-danger mb-3">Error sending
								message!</div>
						</div>
						<!-- Submit Button-->
						<div class="d-grid">
							<button class="btn btn-primary btn-xl disabled" id="submitButton"
								type="submit">Se connecter</button>
						</div>
					</form>
				</div>
			</div>
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-lg-4 text-center mb-5 mb-lg-0">
					<i class="bi-phone fs-2 mb-3 text-muted"></i>
					<div>+1 (555) 123-4567</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer-->
	<footer class="bg-light py-5">
		<div class="container px-4 px-lg-5">
			<div class="small text-center text-muted">Copyright &copy; 2021
				- Charity Raise</div>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- SimpleLightbox plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
	<!-- Core theme JS-->
	<%-- 	<script src="<c:out value="resources/js/scripts.js"/>"></script> --%>
	<script src="resources/js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<script language="javascript" type="text/javascript"
		src="resources/js/jquery-3.6.0.min.js"> 
</body>
</html>