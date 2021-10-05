<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

<title>Insert title here</title>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<form name="contactForm"  action="">
					<!-- Email Admin input-->
					<div class="form-floating mb-3">
						<input class="form-control" id="email" type="text"
							   name="email"
							   placeholder="promoter@example.com"
							   data-sb-validations="required,email" />
						<label for="email">Email du promoteur*</label>
						<div class="invalid-feedback" data-sb-feedback="email:required">Un
							email est requis.</div>
						<div class="invalid-feedback" data-sb-feedback="email:email">l'email
							n'est pas valide.</div>
					</div>
					<!--Admin password input-->
					<div class="form-floating mb-3">
						<input class="form-control" id="mdp" type="password"
							   name="mdp"
							   placeholder="Enter admin password..."
							   data-sb-validations="required" />
						<label for="mdp">Mot de passe du promoter*</label>
						<div class="invalid-feedback"
							 data-sb-feedback="password:required">le mot de passe du promoter est requis.</div>
						<div class="invalid-feedback"
							 data-sb-feedback="password:password">le mot de passe
							n'est pas valide.</div>
						<!--                   
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
				</form>
				<div class="d-grid">
					<button class="btn btn-primary btn-xl" id="btn">Se connecter</button>
				</div>
				<br>
				<br>
				<div id="div2" style="color:#ff0000"></div>
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
												alert("success");												
												$("#div2").text("nice");    
											}
											else {console.log("fonction error");
												$("#div2").text("Identifiant et/ou Mot de passe incorrect. Merci de réessayer.");  
											}
										}	
										
									});
						});
					});
				</script>
</body>
</html>