<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Faire un don</title>
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
	<!-- END nav -->

	<section class="ftco-section-3 img"
		style="background-image: url(../../resources/template_HomePageAssoc/images/bg_3.jpg);">
		<div class="overlay"></div>


		<div class="container">
			<div class="row d-md-flex">
				<div class="col-md-6 d-flex ftco-animate">
					<div class="img img-2 align-self-stretch"
						style="background-image: url(../../resources/template_HomePageAssoc/images/donation.jpg);"></div>
				</div>
				<div class="col-md-6 volunteer pl-md-5 ftco-animate">
					<h3 class="mb-3">Faites un Don</h3>
					<button class="btn btn-secondary bg-dark mb-3 border-white rounded-pill" id="btn2">Je suis déjà inscrit ou j'ai déjà fait
						un don</button>
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

						<spring:bind path="donation.amount">
							<label hidden id="11" for="amount"></label>
							<div class="form-group">
								<input id="funding" type="text" class="form-control"
									name="${status.expression}" value="${status.value}"
									placeholder="Montant de votre Don">
							</div>
						</spring:bind>

						<form:label id="13" value="CB :" path="donation.state">CB</form:label>
						<form:radiobutton id="12" path="donation.state" value="done" />
						<form:label id="14" value="chèque :" path="donation.state">Chèque</form:label>
						<form:radiobutton id="15" path="donation.state" value="inprogress" />


						<div class="form-group">
							<input type="submit" value="Valider votre Don"
								class="btn btn-secondary bg-dark mb-3 border-white rounded-pill">
						</div>

					</form>
					<div id="div2" style="color: #ff0000"></div>
					<a id="div3"
						href="${pageContext.request.contextPath}/donation/pageUserChecked/${id}">Confirmer
						mon identitée</a>
					<script>
						$(document)
								.ready(
										function() {

											$("#div3").hide();
											var ret = false;

											$("#form1")
													.submit(
															function(event) {
																if (!ret) {
																	//Empeche la validation du formulaire
																	event.preventDefault();

																	var email = document.getElementById("email").value;
																	
																	var idAsso = ${id};
																	alert(email);
																	alert(idAsso);
																	$.ajax({
																				url : "${pageContext.request.contextPath}/checkIdentityContributor",
																				type : "POST",
																				data : {
																					"email" : email,
																					"idAsso" : idAsso
																				},
																				success : function(result) {
																					if (result == "inconnu") {
																						ret = true;
																						$("#form1")[0].submit();
																					} else {
																						$("#div2").text(result);
																						$("#div3").show();
																						ret = false;
																					};
																				}
																			});
																}//fin if ret	    
															});
										});
					</script>
				</div>
			</div>
		</div>
	</section>

<!-- 	<footer class="ftco-footer ftco-section img"> -->
<!-- 		<div class="overlay"></div> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="row mb-5"> -->
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="ftco-footer-widget mb-4"> -->
<!-- 						<h2 class="ftco-heading-2">About Us</h2> -->
<!-- 						<p>Far far away, behind the word mountains, far from the -->
<!-- 							countries Vokalia and Consonantia, there live the blind texts.</p> -->
<!-- 						<ul -->
<!-- 							class="ftco-footer-social list-unstyled float-md-left float-lft mt-5"> -->
<!-- 							<li class="ftco-animate"><a href="#"><span -->
<!-- 									class="icon-twitter"></span></a></li> -->
<!-- 							<li class="ftco-animate"><a href="#"><span -->
<!-- 									class="icon-facebook"></span></a></li> -->
<!-- 							<li class="ftco-animate"><a href="#"><span -->
<!-- 									class="icon-instagram"></span></a></li> -->
<!-- 						</ul> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-4"> -->
<!-- 					<div class="ftco-footer-widget mb-4"> -->
<!-- 						<h2 class="ftco-heading-2">Recent Blog</h2> -->
<!-- 						<div class="block-21 mb-4 d-flex"> -->
<!-- 							<a class="blog-img mr-4" -->
<!-- 								style="background-image: url(resources/template_HomePageAssoc/images/image_1.jpg);"></a> -->
<!-- 							<div class="text"> -->
<!-- 								<h3 class="heading"> -->
<!-- 									<a href="#">Even the all-powerful Pointing has no control -->
<!-- 										about</a> -->
<!-- 								</h3> -->
<!-- 								<div class="meta"> -->
<!-- 									<div> -->
<!-- 										<a href="#"><span class="icon-calendar"></span> July 12, -->
<!-- 											2018</a> -->
<!-- 									</div> -->
<!-- 									<div> -->
<!-- 										<a href="#"><span class="icon-person"></span> Admin</a> -->
<!-- 									</div> -->
<!-- 									<div> -->
<!-- 										<a href="#"><span class="icon-chat"></span> 19</a> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="block-21 mb-4 d-flex"> -->
<!-- 							<a class="blog-img mr-4" -->
<!-- 								style="background-image: url(resources/template_HomePageAssoc/images/image_2.jpg);"></a> -->
<!-- 							<div class="text"> -->
<!-- 								<h3 class="heading"> -->
<!-- 									<a href="#">Even the all-powerful Pointing has no control -->
<!-- 										about</a> -->
<!-- 								</h3> -->
<!-- 								<div class="meta"> -->
<!-- 									<div> -->
<!-- 										<a href="#"><span class="icon-calendar"></span> July 12, -->
<!-- 											2018</a> -->
<!-- 									</div> -->
<!-- 									<div> -->
<!-- 										<a href="#"><span class="icon-person"></span> Admin</a> -->
<!-- 									</div> -->
<!-- 									<div> -->
<!-- 										<a href="#"><span class="icon-chat"></span> 19</a> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-2"> -->
<!-- 					<div class="ftco-footer-widget mb-4 ml-md-4"> -->
<!-- 						<h2 class="ftco-heading-2">Site Links</h2> -->
<!-- 						<ul class="list-unstyled"> -->
<!-- 							<li><a href="#" class="py-2 d-block">Home</a></li> -->
<!-- 							<li><a href="#" class="py-2 d-block">About</a></li> -->
<!-- 							<li><a href="#" class="py-2 d-block">Donate</a></li> -->
<!-- 							<li><a href="#" class="py-2 d-block">Causes</a></li> -->
<!-- 							<li><a href="#" class="py-2 d-block">Event</a></li> -->
<!-- 							<li><a href="#" class="py-2 d-block">Blog</a></li> -->
<!-- 						</ul> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="ftco-footer-widget mb-4"> -->
<!-- 						<h2 class="ftco-heading-2">Have a Questions?</h2> -->
<!-- 						<div class="block-23 mb-3"> -->
<!-- 							<ul> -->
<!-- 								<li><span class="icon icon-map-marker"></span><span -->
<!-- 									class="text">203 Fake St. Mountain View, San Francisco, -->
<!-- 										California, USA</span></li> -->
<!-- 								<li><a href="#"><span class="icon icon-phone"></span><span -->
<!-- 										class="text">+2 392 3929 210</span></a></li> -->
<!-- 								<li><a href="#"><span class="icon icon-envelope"></span><span -->
<!-- 										class="text">info@yourdomain.com</span></a></li> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="col-md-12 text-center"> -->

<!-- 					<p> -->
<!-- 						Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
<!-- 						Copyright &copy; -->
<!-- 						<script>document.write(new Date().getFullYear());</script> -->
<!-- 						All rights reserved | This template is made with <i -->
<!-- 							class="icon-heart" aria-hidden="true"></i> by <a -->
<!-- 							href="https://colorlib.com" target="_blank">Colorlib</a> -->
<!-- 						Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
<!-- 					</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</footer> -->



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
	<script language="javascript" type="text/javascript">
                $(document).ready(function(){
                	$("#btn2").click(hide);
                                   
                });                
                function hide(){                   
                $("#1").toggle();
                $("#firstname").toggle();
                $("#2").toggle();
                $("#3").toggle();
                $("#4").toggle();
                $("#5").toggle();
                $("#6").toggle();
                $("#7").toggle();
                $("#8").toggle();
                $("#9").toggle();
                $("#10").toggle();
                $("#11").toggle();
                $("#12").toggle();
                $("#13").toggle();
                $("#age").toggle();
                $("#address").toggle();
                $("#town").toggle();
                $("#mobile").toggle();
                $("#compAdd").toggle();
                $("#funding").toggle();
                $("#14").toggle();
                $("#15").toggle();               
                }      
</script>

</body>
</html>