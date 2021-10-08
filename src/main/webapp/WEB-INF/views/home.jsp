<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	href="<c:out value="${pageContext.request.contextPath}/resources/assets/favicon.ico"/>" />
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="<c:out value="${pageContext.request.contextPath}/resources/css/styles.css"/>" rel="stylesheet" />
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
					<li class="nav-item"><a class="nav-link" href="#home">Accueil</a></li>
					<li class="nav-item"><a class="nav-link" href="#associations">Associations</a></li>
					<li class="nav-item"><a class="nav-link" href="#subscribe">S'inscrire</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/loginAssociation">Se
							Connecter</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead" id="home">
		<div class="container px-4 px-lg-5 h-100">
			<div
				class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
				<div class="col-lg-8 align-self-end">
					<h1 class="text-white font-weight-bold">Votre plateforme
						favorite pour la levée de dons par l'évènementiel !</h1>
					<hr class="divider" />
				</div>
				<div class="col-lg-8 align-self-baseline">
					<p class="text-white-75 mb-5">Organisez la gestion des dons 
					et optimisez les gestion des événements de votre association</p>
					<a class="btn btn-primary btn-xl" href="#subscribe">Incrivez-vous!</a>
				</div>
			</div>
		</div>
	</header>
<!-- Tests-->
<!-- 	<div class="row gx-4 gx-lg-5 justify-content-center mb-5"> -->
<!-- 		<div class="col-lg-6"> -->
<!-- 			<div class="form-floating mb-3"> -->
<!-- 				<form action="allAssociations" method="post" id="contactForm"> -->
<!-- 					<input type="submit" value="Liste de toutes les associations" /> -->
<!-- 				</form> -->
<!-- 				</br> -->
<!-- 								<form action="addAssociation" method="get" id="contactForm"> -->
<!-- 									<input type="submit" value="ajouter une association" /> -->
<!-- 								</form> -->
<!-- 				</br> -->
<!-- 				<form action="allUsers" method="post" id="contactForm"> -->
<!-- 					<input type="submit" value="Liste de tous les utilisateurs" /> -->
<!-- 				</form> -->
<!-- 				</br> -->
<!-- 								<form action="addUser" method="get" id="contactForm"> -->
<!-- 									<input type="submit" value="ajouter un utilisateur" /> -->
<!-- 								</form> -->
<!-- 				</br> -->
<!-- 				<form action="allEvents" method="post" id="contactForm"> -->
<!-- 					<input type="submit" value="Liste de tous les évènements" /> -->
<!-- 				</form> -->
<!-- 				</br> -->
<!-- 								<form action="addEvent" method="get" id="contactForm"> -->
<!-- 									<input type="submit" value="ajouter un évènement" /> -->
<!-- 								</form> -->
<!-- 				</br> -->
<!-- 				<form action="upload" method="post" id="contactForm"> -->
<!-- 					<input type="submit" value="Upload un fichier" /> -->
<!-- 				</form> -->
<!-- 				</br> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- Services-->
	<section class="page-section" id="services">
		<div class="container px-4 px-lg-5">
			<h2 class="text-center mt-0">Ce qu'on peut faire pour vous</h2>
			<hr class="divider" />
			<div class="row gx-4 gx-lg-5">
				<div class="col-lg-3 col-md-6 text-center">
					<div class="mt-5">
						<div class="mb-2">
							<i class="bi-laptop fs-1 text-primary"></i>
						</div>
						<h3 class="h4 mb-2">Une page dédiée</h3>
						<p class="text-muted mb-0">Une page d'accueil dédiée à votre association pour la 
						réalisation des dons et l'inscription des utilisateurs</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="mt-5">
						<div class="mb-2">
							<i class="bi-calendar2-check fs-1 text-primary"></i>
						</div>
						<h3 class="h4 mb-2">Un espace de gestion</h3>
						<p class="text-muted mb-0">Un tableau de bord complet pour la gestion de vos utilisateurs</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="mt-5">
						<div class="mb-2">
							<i class="bi-bar-chart fs-1 text-primary"></i>
						</div>
						<h3 class="h4 mb-2">Des statistiques</h3>
						<p class="text-muted mb-0">Retrouvez vos dons cumulés, le nombre de bénévoles inscrits etc...</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="mt-5">
						<div class="mb-2">
							<i class="bi-hand-thumbs-up fs-1 text-primary"></i>
						</div>
						<h3 class="h4 mb-2">Enjoy!</h3>
						<p class="text-muted mb-0">Gérez vos évenements en toute simplicité !</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	
<!-- 	<!-- Events List--> 
<!-- 	<section class="page-section" id="subscribe"> -->
<!-- 		<div class="container px-4 px-lg-5"> -->
<!-- 			<div class="row gx-4 gx-lg-5 justify-content-center"> -->
<!-- 				<div class="col-lg-4 text-center mb-5 mb-lg-0"> -->
<!-- 					<i class="bi-phone fs-2 mb-3 text-muted"></i> -->
<!-- 					<div>+1 (555) 123-4567</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</section> -->
	<!-- Portfolio-->
<section class="page-section" id="associations">
	<div id="portfolio">
		<div class="container-fluid p-0">
		<h2 class="text-center mt-0">Ils nous font confiance</h2>
			<hr class="divider" />
			<div class="row g-0">
			<c:forEach var="association" items="${associationList}">
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box"
						href="${pageContext.request.contextPath}/template/homePageAssociation/${association.id}"
						title="Project Name"> 
						<img class="d-flex mx-auto" src="${association.photo}" height="350" alt="..." />
						<div class="portfolio-box-caption">
							<div class="project-category text-white-50">Association</div>
							<div class="${association.associationName}">${association.associationName}</div>
							<div class="${association.city}">${association.city}</div>
							<div class="${association.description}">${association.description}</div>
						</div>
					</a>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
	</section>

<!-- 	<!-- Call to action--> 
<!-- 	<section class="page-section bg-dark text-white"> -->
<!-- 		<div class="container px-4 px-lg-5 text-center"> -->
<!-- 			<h2 class="mb-4">Découvrez des projets déjà créés !</h2> -->
<!-- 			<a class="btn btn-light btn-xl" -->
<!-- 				href="https://startbootstrap.com/theme/creative/">Voir davantage -->
<!-- 				de projets !...</a> -->
<!-- 		</div> -->
<!-- 	</section> -->
	
	<!-- Subscribe-->
	<section class="page-section" id="subscribe">
		<div class="container px-4 px-lg-5">
			<h2 class="text-center mt-0">Créez votre plateforme de gestion de dons
						événementiel !</h2>
			<hr class="divider" />
			<p class="text-muted text-center mb-5">Prêt à démarrer votre prochain
						projet avec nous ? Remplissez le formulaire et commencez dès
						aujourd'hui à gérez votre plateforme !</p>
			<div class="row gx-4 gx-lg-5 justify-content-center mb-5">
            <div class="col-lg-6">
                <!-- * * * * * * * * * * * * * * *-->
                <!-- * * SB Forms Contact Form * *-->
                <!-- * * * * * * * * * * * * * * *-->
                <!-- This form is pre-integrated with SB Forms.-->
                <!-- To make this form functional, sign up at-->
                <!-- https://startbootstrap.com/solution/contact-forms-->
                <!-- to get an API token!-->
                <h5>Coordonnées de l'association</h5>
                <form:form id="contactForm" method="POST" action="home" modelAttribute="association">
                    <!--Official Association Name input-->
                    <div class="form-floating mb-3">
                        <form:input class="form-control" id="associationName" type="text"
                               placeholder="Enter official Association name..."
                               data-sb-validations="required" path="associationName"></form:input>
                        <form:label for="associationName" path="associationName">Nom
                        officiel de l'association dans les statuts*</form:label>
                        <div class="invalid-feedback"
                             data-sb-feedback="associationName:required">Le nom de
                            l'association est requis.</div>
                    </div>
                    <!--RNA nbr input-->
                    <div class="form-floating mb-3">
                        <form:input class="form-control" id="rnaNumber" type="text"
                               placeholder="RNA number..." data-sb-validations="required" path="rnaNumber" ></form:input>
                               <form:label for="rnaNbr" path="rnaNumber">Numéro RNA (Répertoire National des
                        Associations)</form:label>
                        <div class="invalid-feedback" data-sb-feedback="rnaNumber:required">Un
                            numéro RNA est requis.</div>
                        <sup> Débutant par W et composé de 9 chiffres</sup></br> <sup>
                        Ce numéro est attribué automatiquement lors de la déclaration de
                        création d'une association</sup>
                    </div>
                    <!--Association address input-->
                    <div class="form-floating mb-3">
                        <form:input class="form-control" id="address" type="text"
                               placeholder="Association address..."
                               data-sb-validations="required" path="address"/>
                        <form:label for="address" path="address">Adresse de l'association*</form:label>
                        <div class="invalid-feedback"
                             data-sb-feedback="address:required">L'adresse
                            de l'association est requis.</div>
                    </div>
                    <!-- Zipcode input-->
                    <div class="form-floating mb-3">
                        <form:input class="form-control" id="zipCode" type="tel"
                               placeholder="85000" data-sb-validations="required" path="zipCode"/> 
                        <form:label
                            for="zipCode" path="zipCode">Code postal*</form:label>
                        <div class="invalid-feedback" data-sb-feedback="zipCode:required">Un
                            code postal est requis.</div>
                    </div>
                    <!--City input-->
                    <div class="form-floating mb-3">
                        <form:input class="form-control" id="city" type="text"
                               placeholder="Association town..." data-sb-validations="required" path="city" />
                        <form:label for="ville" path="city">Ville*</form:label>
                        <div class="invalid-feedback" data-sb-feedback="ville:required">Une
                            ville est requise.</div>
                    </div>
                    <!--Association country input-->
                    <div class="form-floating mb-3">
                        <form:input class="form-control" id="country" type="text"
                               placeholder="Association country..."
                               data-sb-validations="required" path="country"/>
                               <label
                            for="associationCountry" path="country">Pays*</label>
                        <div class="invalid-feedback"
                             data-sb-feedback="associationCountry:required">Un pays est
                            requis.</div>
                    </div>
                    <!-- Description input-->
                    <div class="form-floating mb-3">
							<form:textarea class="form-control" id="description" type="text"
                                      placeholder="describe the association..." style="height: 10rem"
                                      data-sb-validations="required" path="description"></form:textarea>
                        <label for="description" path="description">Description de votre association
                            - objet de l'association*</label>
                        <div class="invalid-feedback"
                             data-sb-feedback="description:required">Une description
                            est requise.</div>
                    </div>
                    <!-- Email Association input-->
                    <div class="form-floating mb-3">
                        <form:input class="form-control" id="email" type="email"
                               placeholder="association@example.com"
                               data-sb-validations="required,email" path="email"/>
                               <form:label for="email" path="email">Email de l'association*</form:label>
                        <div class="invalid-feedback"
                             data-sb-feedback="email:required">Un email est
                            requis.</div>
                        <div class="invalid-feedback"
                             data-sb-feedback="email:email">l'email n'est
                            pas valide.</div>
                    </div>
                     <!-- Password Association input-->
                    <div class="form-floating mb-3">
                        <form:input class="form-control" id="password" type="password"
                               placeholder="association@example.com"
                               data-sb-validations="required,password" path="password" />
                               <form:label
                            for="passwordAssociation" path="password">Mot de passe de l'association*</form:label>
                        <div class="invalid-feedback"
                             data-sb-feedback="password:required">Un mot de passe est
                            requis.</div>
                        <div class="invalid-feedback"
                             data-sb-feedback="password:password">Le mot de passe n'est
                            pas valide.</div>
                        
                    </div>
                     <!-- Logo Association input-->
                    <div class="form-floating mb-3">
                        <form:input class="form-control" id="photo" type="text"
                               placeholder="Entrez l'url de votre logo"
                               data-sb-validations="required" path="photo"/>
                               <form:label for="photo" path="photo">Logo*</form:label>
                        <div class="invalid-feedback"
                             data-sb-feedback="photo:required">Un logo est
                            requis.</div>
                    </div>
                    
                     <!-- BackupPic Association input-->
                    <div class="form-floating mb-3">
                        <form:input class="form-control" id="theme" type="text"
                               placeholder="Entrez l'url de votre image"
                               data-sb-validations="required" path="theme"/>
                               <form:label for="teme" path="theme">Fond d'écran *</form:label>
                        <div class="invalid-feedback"
                             data-sb-feedback="theme:required">Une image pour arriere plan.</div>
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
					<div class="d-grid" >
						<button class="btn btn-primary btn-xl" id="btn" type="submit" value="submit">S'inscrire</button>
					</div>
					<br>
					<br>
				<div id="div2" style="color:#ff0000"></div>
                </form:form>
                  
    
            </div>
        </div>
<script>	
	$(document).ready(function(){		 
		var ret = false;		
		$("#contactForm").submit(function(event){
	    if(!ret) {
	        //Empeche la validation du formulaire
	        event.preventDefault();

	         var email = document.getElementById("email").value;
	          var rna = document.getElementById("rnaNumber").value;	         
	
	    	$.ajax(
	    			{ url: "${pageContext.request.contextPath}/checkAssociationAlreadyExist",
						type: "POST",
						data: {				
							"email":email,
							"rna":rna
						},
						success: function(result)
						{											
							if(result=="success"){
								ret=true;
								 $("#contactForm")[0].submit();
							}
							else {
								
								$("#div2").text(result);
							ret=false;							
							}; 
						}
					});	      
	    }//fin if ret	    
		});
	});
	</script>
<!-- 			<div class="row gx-4 gx-lg-5 justify-content-center"> -->
<!-- 				<div class="col-lg-4 text-center mb-5 mb-lg-0"> -->
<!-- 					<i class="bi-phone fs-2 mb-3 text-muted"></i> -->
<!-- 					<div>+1 (555) 123-4567</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- SimpleLightbox plugin JS-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
	<!-- Core theme JS-->
	<script src="<c:out value="${pageContext.request.contextPath}/resources/js/scripts1.js"/>"></script>
	
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

</body>
</html>