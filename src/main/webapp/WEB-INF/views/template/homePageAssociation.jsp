<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Bienvenue sur la plateforme de ${association.associationName}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Overpass:300,400,400i,600,700" rel="stylesheet">

    
    <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/open-iconic-bootstrap.min.css"/>">
    
    <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/animate.css"/>">
    <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/owl.carousel.min.css"/>">
    <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/owl.theme.default.min.css"/>">

    <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/magnific-popup.css"/>">

    <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/aos.css"/>">

    <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/ionicons.min.css"/>">
    <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/bootstrap-datepicker.css"/>">

    
    <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/jquery.timepicker.css"/>">
    <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/flaticon.css"/>">
    <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/icomoon.css"/>">
    <link rel="stylesheet" href="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/css/styles.css"/>">
  </head>
  <body id="page-top">
    
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
    	<img class="img-fluid"src="${association.photo}" height="50" width="50" alt="..." />
      <a class="navbar-brand" href="#page-top">${association.associationName}</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active"><a href="#page-top" class="nav-link">Accueil</a></li>
          <li class="nav-item"><a href="${pageContext.request.contextPath}/donation/add_donation/${association.id}" class="nav-link">Faire un Don</a></li>
          <li class="nav-item"><a href="#events" class="nav-link">Evènements</a></li>
          <li class="nav-item"><a href="${pageContext.request.contextPath}/loginPromote" class="nav-link">Se connecter</a></li>
          
        </ul>
      </div>
    </div>
  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap" style="background-image: url(${association.theme});" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-7 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">${association.description}</h1>
<!--             <p class="mb-5" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Created by <a href="#">Colorlib.com</a></p> -->

<!--             <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><a href="https://vimeo.com/45830194" class="btn btn-white btn-outline-white px-4 py-3 popup-vimeo"><span class="icon-play mr-2"></span>Watch Video</a></p> -->
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-counter ftco-intro" id="section-counter">
    	<div class="container">
    		<div class="row no-gutters">
    			<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 color-1 align-items-stretch">
              <div class="text">
              	<span>Déjà récolté plus de </span>
                <strong class="number" data-number="15456" style="font-size: 35px">0</strong>
                <span>€uros de Dons pour cette Association</span>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 color-2 align-items-stretch">
              <div class="text">
              	<h3 class="mb-2">Faites un Don</h3>
              	<p>Vous pouvez faire un don ponctuel en ligne, par carte bancaire ou paypal, en quelques clics seulement, sur notre formulaire de don sécurisé. C'est rapide et très simple : il vous suffit de renseigner le montant de votre don, vos coordonnées personnelles, ainsi que vos informations bancaires.</p>
              	<p><a href="${pageContext.request.contextPath}/donation/add_donation/${association.id}" class="btn btn-secondary bg-dark mb-3 border-white rounded-pill">Faire un don</a></p>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 color-3 align-items-stretch">
              <div class="text">
              	<h3 class="mb-2">Devenez Bénévole</h3>
              	<p>Vous souhaitez vous investir auprès d’une association et vous vous posez de nombreuses questions : Est-ce vraiment fait pour moi ? Puis-je concilier cet engagement avec mon emploi du temps ? Comment valoriser cette expérience ? Étudiants, salariés, retraités, demandeurs d’emploi… Rassurez-vous ! Tout le monde peut devenir bénévole, et c’est bien plus simple qu’on ne le pense.</p>
              	<p><a href="${pageContext.request.contextPath}/addVolonteer/${association.id}" class="btn btn-secondary bg-dark mb-3 border-white rounded-pill">Devenir bénévole</a></p>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 color-2 align-items-stretch">
              <div class="text">
              	<h3 class="mb-2">Devenez Organisateur</h3>
              	<p>Rien de plus simple ! Cliquez sur le bouton ci-dessous et remplissez le formulaire. Nous vous contacterons pour nous assurer que vous partagez la même vision que nous. Si le courant passe, nous vous donnerons accès à différents documents utiles et nous vous aiderons à organiser l'événement.</p>
              	<p><a href="${pageContext.request.contextPath}/addPromoter/${association.id}" class="btn btn-secondary bg-dark mb-3 border-white rounded-pill">Devenir organisateur</a></p>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 color-3 align-items-stretch">
              <div class="text">
              	<h3 class="mb-2">Devenez Sponsor</h3>
              	<p>Souvent associé aux partenariats liant de grands équipementiers aux sportifs stars, devenir est en fait à la portée d’entreprise de toute taille. Il consiste à soutenir par exemple, un évènement culturel ou sportif, une association ou une personne, en contrepartie de visibilité pour l’entreprise.</p>
              	<p><a href="${pageContext.request.contextPath}/addPartner/${association.id}" class="btn btn-secondary bg-dark mb-3 border-white rounded-pill">Devenir sponsor</a></p>
              </div>
            </div>
          </div>
    		</div>
    	</div>
    </section>

<!--     <section class="ftco-section"> -->
<!--     	<div class="container"> -->
<!--     		<div class="row"> -->
<!--           <div class="col-md-4 d-flex align-self-stretch ftco-animate"> -->
<!--             <div class="media block-6 d-flex services p-3 py-4 d-block"> -->
<!--               <div class="icon d-flex mb-3"><span class="flaticon-donation-1"></span></div> -->
<!--               <div class="media-body pl-4"> -->
<!--                 <h3 class="heading">Make Donation</h3> -->
<!--                 <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p> -->
<!--               </div> -->
<!--             </div>       -->
<!--           </div> -->
<!--           <div class="col-md-4 d-flex align-self-stretch ftco-animate"> -->
<!--             <div class="media block-6 d-flex services p-3 py-4 d-block"> -->
<!--               <div class="icon d-flex mb-3"><span class="flaticon-charity"></span></div> -->
<!--               <div class="media-body pl-4"> -->
<!--                 <h3 class="heading">Become A Volunteer</h3> -->
<!--                 <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p> -->
<!--               </div> -->
<!--             </div>       -->
<!--           </div> -->
<!--           <div class="col-md-4 d-flex align-self-stretch ftco-animate"> -->
<!--             <div class="media block-6 d-flex services p-3 py-4 d-block"> -->
<!--               <div class="icon d-flex mb-3"><span class="flaticon-donation"></span></div> -->
<!--               <div class="media-body pl-4"> -->
<!--                 <h3 class="heading">Sponsorship</h3> -->
<!--                 <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p> -->
<!--               </div> -->
<!--             </div>     -->
<!--           </div> -->
<!--         </div> -->
<!--     	</div> -->
<!--     </section> -->


<!--     <section class="ftco-section bg-light"> -->
<!--     	<div class="container-fluid"> -->
<!--     		<div class="row justify-content-center mb-5 pb-3"> -->
<!--           <div class="col-md-5 heading-section ftco-animate text-center"> -->
<!--             <h2 class="mb-4">Our Causes</h2> -->
<!--             <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p> -->
<!--           </div> -->
<!--         </div> -->
<!--     		<div class="row"> -->
<!--     			<div class="col-md-12 ftco-animate"> -->
<!--     				<div class="carousel-cause owl-carousel"> -->
<!-- 	    				<div class="item"> -->
<!-- 	    					<div class="cause-entry"> -->
<!-- 		    					<a href="#" class="img" style="background-image: url(../resources/images/cause-1.jpg);"></a> -->
<!-- 		    					<div class="text p-3 p-md-4"> -->
<!-- 		    						<h3><a href="#">Clean water for the urban area</a></h3> -->
<!-- 		    						<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p> -->
<!-- 		    						<span class="donation-time mb-3 d-block">Last donation 1w ago</span> -->
<!-- 		                <div class="progress custom-progress-success"> -->
<!-- 		                  <div class="progress-bar bg-primary" role="progressbar" style="width: 28%" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"></div> -->
<!-- 		                </div> -->
<!-- 		                <span class="fund-raised d-block">$12,000 raised of $30,000</span> -->
<!-- 		    					</div> -->
<!-- 		    				</div> -->
<!-- 	    				</div> -->
<!-- 	    				<div class="item"> -->
<!-- 	    					<div class="cause-entry"> -->
<!-- 		    					<a href="#" class="img" style="background-image: url(../resources/images/cause-2.jpg);"></a> -->
<!-- 		    					<div class="text p-3 p-md-4"> -->
<!-- 		    						<h3><a href="#">Clean water for the urban area</a></h3> -->
<!-- 		    						<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p> -->
<!-- 		    						<span class="donation-time mb-3 d-block">Last donation 1w ago</span> -->
<!-- 		                <div class="progress custom-progress-success"> -->
<!-- 		                  <div class="progress-bar bg-primary" role="progressbar" style="width: 28%" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"></div> -->
<!-- 		                </div> -->
<!-- 		                <span class="fund-raised d-block">$12,000 raised of $30,000</span> -->
<!-- 		    					</div> -->
<!-- 		    				</div> -->
<!-- 	    				</div> -->
<!-- 	    				<div class="item"> -->
<!-- 	    					<div class="cause-entry"> -->
<!-- 		    					<a href="#" class="img" style="background-image: url(../resources/images/cause-3.jpg);"></a> -->
<!-- 		    					<div class="text p-3 p-md-4"> -->
<!-- 		    						<h3><a href="#">Clean water for the urban area</a></h3> -->
<!-- 		    						<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p> -->
<!-- 		    						<span class="donation-time mb-3 d-block">Last donation 1w ago</span> -->
<!-- 		                <div class="progress custom-progress-success"> -->
<!-- 		                  <div class="progress-bar bg-primary" role="progressbar" style="width: 28%" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"></div> -->
<!-- 		                </div> -->
<!-- 		                <span class="fund-raised d-block">$12,000 raised of $30,000</span> -->
<!-- 		    					</div> -->
<!-- 		    				</div> -->
<!-- 	    				</div> -->
<!-- 	    				<div class="item"> -->
<!-- 	    					<div class="cause-entry"> -->
<!-- 		    					<a href="#" class="img" style="background-image: url(../resources/images/cause-4.jpg);"></a> -->
<!-- 		    					<div class="text p-3 p-md-4"> -->
<!-- 		    						<h3><a href="#">Clean water for the urban area</a></h3> -->
<!-- 		    						<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p> -->
<!-- 		    						<span class="donation-time mb-3 d-block">Last donation 1w ago</span> -->
<!-- 		                <div class="progress custom-progress-success"> -->
<!-- 		                  <div class="progress-bar bg-primary" role="progressbar" style="width: 28%" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"></div> -->
<!-- 		                </div> -->
<!-- 		                <span class="fund-raised d-block">$12,000 raised of $30,000</span> -->
<!-- 		    					</div> -->
<!-- 		    				</div> -->
<!-- 	    				</div> -->
<!-- 	    				<div class="item"> -->
<!-- 	    					<div class="cause-entry"> -->
<!-- 		    					<a href="#" class="img" style="background-image: url(../resources/images/cause-5.jpg);"></a> -->
<!-- 		    					<div class="text p-3 p-md-4"> -->
<!-- 		    						<h3><a href="#">Clean water for the urban area</a></h3> -->
<!-- 		    						<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p> -->
<!-- 		    						<span class="donation-time mb-3 d-block">Last donation 1w ago</span> -->
<!-- 		                <div class="progress custom-progress-success"> -->
<!-- 		                  <div class="progress-bar bg-primary" role="progressbar" style="width: 28%" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"></div> -->
<!-- 		                </div> -->
<!-- 		                <span class="fund-raised d-block">$12,000 raised of $30,000</span> -->
<!-- 		    					</div> -->
<!-- 		    				</div> -->
<!-- 	    				</div> -->
<!-- 	    				<div class="item"> -->
<!-- 	    					<div class="cause-entry"> -->
<!-- 		    					<a href="#" class="img" style="background-image: url(../resources/images/cause-6.jpg);"></a> -->
<!-- 		    					<div class="text p-3 p-md-4"> -->
<!-- 		    						<h3><a href="#">Clean water for the urban area</a></h3> -->
<!-- 		    						<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p> -->
<!-- 		    						<span class="donation-time mb-3 d-block">Last donation 1w ago</span> -->
<!-- 		                <div class="progress custom-progress-success"> -->
<!-- 		                  <div class="progress-bar bg-primary" role="progressbar" style="width: 28%" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"></div> -->
<!-- 		                </div> -->
<!-- 		                <span class="fund-raised d-block">$12,000 raised of $30,000</span> -->
<!-- 		    					</div> -->
<!-- 		    				</div> -->
<!-- 	    				</div> -->
<!--     				</div> -->
<!--     			</div> -->
<!--     		</div> -->
<!--     	</div> -->
<!--     </section> -->

    <section class="ftco-section">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
            <h2 class="mb-4">Dons</h2>
            <p>“Le don est échange de vie ; et la vie, échange de don.” <i>Paul Zumthor</i></p>
          </div>
        </div>
        <div class="row">
        <c:forEach var="user" items="${userHasDonatedList}">
        	<div class="col-lg-4 d-flex mb-sm-4 ftco-animate">
        		<div class="staff">
        			<div class="d-flex mb-4">
        				<div class="img" style="background-image: url(../../resources/images/emoji.png);"></div>
        				<div class="info ml-4">
        					<h3><a class="${user.firstName}" href="#">${user.firstName}</a></h3>
        					<h3><a class="${user.lastName}" href="#">${user.lastName}</a></h3>
        					<span class="position">Donated Just now</span>
        					<div class="text">
<!-- 		        				<p>A donné <span>$300</span> pour <a href="#">Children Needs Food</a></p> -->
		        			</div>
        				</div>
        			</div>
        		</div>
        	</div>
        	</c:forEach>
        </div>
      </div>
    </section>

<!--     <section class="ftco-gallery"> -->
<!--     	<div class="d-md-flex"> -->
<!-- 	    	<a href="../resources/images/cause-2.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/images/cause-2.jpg);"> -->
<!-- 	    		<div class="icon d-flex justify-content-center align-items-center"> -->
<!-- 	    			<span class="icon-search"></span> -->
<!-- 	    		</div> -->
<!-- 	    	</a> -->
<!-- 	    	<a href="../resources/images/cause-3.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/images/cause-3.jpg);"> -->
<!-- 	    		<div class="icon d-flex justify-content-center align-items-center"> -->
<!-- 	    			<span class="icon-search"></span> -->
<!-- 	    		</div> -->
<!-- 	    	</a> -->
<!-- 	    	<a href="../resources/images/cause-4.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/images/cause-4.jpg);"> -->
<!-- 	    		<div class="icon d-flex justify-content-center align-items-center"> -->
<!-- 	    			<span class="icon-search"></span> -->
<!-- 	    		</div> -->
<!-- 	    	</a> -->
<!-- 	    	<a href="../resources/images/cause-5.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/images/cause-5.jpg);"> -->
<!-- 	    		<div class="icon d-flex justify-content-center align-items-center"> -->
<!-- 	    			<span class="icon-search"></span> -->
<!-- 	    		</div> -->
<!-- 	    	</a> -->
<!--     	</div> -->
<!--     	<div class="d-md-flex"> -->
<!-- 	    	<a href="../resources/images/cause-6.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/images/cause-6.jpg);"> -->
<!-- 	    		<div class="icon d-flex justify-content-center align-items-center"> -->
<!-- 	    			<span class="icon-search"></span> -->
<!-- 	    		</div> -->
<!-- 	    	</a> -->
<!-- 	    	<a href="../resources/images/image_3.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/images/image_3.jpg);"> -->
<!-- 	    		<div class="icon d-flex justify-content-center align-items-center"> -->
<!-- 	    			<span class="icon-search"></span> -->
<!-- 	    		</div> -->
<!-- 	    	</a> -->
<!-- 	    	<a href="../resources/images/image_1.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/images/image_1.jpg);"> -->
<!-- 	    		<div class="icon d-flex justify-content-center align-items-center"> -->
<!-- 	    			<span class="icon-search"></span> -->
<!-- 	    		</div> -->
<!-- 	    	</a> -->
<!-- 	    	<a href="../resources/images/image_2.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/images/image_2.jpg);"> -->
<!-- 	    		<div class="icon d-flex justify-content-center align-items-center"> -->
<!-- 	    			<span class="icon-search"></span> -->
<!-- 	    		</div> -->
<!-- 	    	</a> -->
<!-- 	    </div> -->
<!--     </section> -->

<!--     <section class="ftco-section"> -->
<!--       <div class="container"> -->
<!--         <div class="row justify-content-center mb-5 pb-3"> -->
<!--           <div class="col-md-7 heading-section ftco-animate text-center"> -->
<!--             <h2 class="mb-4">Recent from blog</h2> -->
<!--             <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p> -->
<!--           </div> -->
<!--         </div> -->
<!--         <div class="row d-flex"> -->
<!--           <div class="col-md-4 d-flex ftco-animate"> -->
<!--           	<div class="blog-entry align-self-stretch"> -->
<!--               <a href="blog-single.html" class="block-20" style="background-image: url('../resources/images/image_1.jpg');"> -->
<!--               </a> -->
<!--               <div class="text p-4 d-block"> -->
<!--               	<div class="meta mb-3"> -->
<!--                   <div><a href="#">Sept 10, 2018</a></div> -->
<!--                   <div><a href="#">Admin</a></div> -->
<!--                   <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div> -->
<!--                 </div> -->
<!--                 <h3 class="heading mt-3"><a href="#">Hurricane Irma has devastated Florida</a></h3> -->
<!--                 <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div class="col-md-4 d-flex ftco-animate"> -->
<!--           	<div class="blog-entry align-self-stretch"> -->
<!--               <a href="blog-single.html" class="block-20" style="background-image: url('../resources/images/image_2.jpg');"> -->
<!--               </a> -->
<!--               <div class="text p-4 d-block"> -->
<!--               	<div class="meta mb-3"> -->
<!--                   <div><a href="#">Sept 10, 2018</a></div> -->
<!--                   <div><a href="#">Admin</a></div> -->
<!--                   <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div> -->
<!--                 </div> -->
<!--                 <h3 class="heading mt-3"><a href="#">Hurricane Irma has devastated Florida</a></h3> -->
<!--                 <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div class="col-md-4 d-flex ftco-animate"> -->
<!--           	<div class="blog-entry align-self-stretch"> -->
<!--               <a href="blog-single.html" class="block-20" style="background-image: url('../resources/images/image_3.jpg');"> -->
<!--               </a> -->
<!--               <div class="text p-4 d-block"> -->
<!--               	<div class="meta mb-3"> -->
<!--                   <div><a href="#">Sept 10, 2018</a></div> -->
<!--                   <div><a href="#">Admin</a></div> -->
<!--                   <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div> -->
<!--                 </div> -->
<!--                 <h3 class="heading mt-3"><a href="#">Hurricane Irma has devastated Florida</a></h3> -->
<!--                 <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!--       </div> -->
<!--     </section> -->

    <section id="events" class="ftco-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
            <h2 class="mb-4">Nos événements</h2>
          </div>
        </div>
        <div class="row">
        	<c:forEach var="event" items="${eventList}">
        	<div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20" style="background-image: url(${event.photo});">
              </a>
              <div class="text p-4 d-block">
                <div class="${event.eventName}">
                <h3 class="heading mb-4"><a href="#">${event.eventName}</a></h3>
                </div>
                <div class="${event.eventDateStart}">
                <p class="time-loc"><span class="mr-2"><i class="icon-clock-o"></i>${event.eventDateStart}</span></p>
                </div>
                <div class="${event.eventDateEnd}">
                <p class="time-loc"><span class="mr-2"><i class="icon-clock-o"></i>${event.eventDateEnd}</span></p>
                </div>
                <div class="${event.eventDescription}">
                <p>${event.eventDescription}</p>
                <p><a href="${pageContext.request.contextPath}/addVolonteer/${association.id}">Je participe<i class="ion-ios-arrow-forward"></i></a></p>
                </div>
              </div>
            </div>
            </div>
            </c:forEach>
          </div>

        </div>
    </section>
		
<!-- 		<section class="ftco-section-3 img" style="background-image: url(../resources/images/bg_3.jpg);"> -->
<!--     	<div class="overlay"></div> -->
<!--     	<div class="container"> -->
<!--     		<div class="row d-md-flex"> -->
<!--     		<div class="col-md-6 d-flex ftco-animate"> -->
<!--     			<div class="img img-2 align-self-stretch" style="background-image: url(../resources/images/bg_4.jpg);"></div> -->
<!--     		</div> -->
<!--     		<div class="col-md-6 volunteer pl-md-5 ftco-animate"> -->
<!--     			<h3 class="mb-3">Be a volunteer</h3> -->
<%--     			<form action="#" class="volunter-form"> --%>
<!--             <div class="form-group"> -->
<!--               <input type="text" class="form-control" placeholder="Your Name"> -->
<!--             </div> -->
<!--             <div class="form-group"> -->
<!--               <input type="text" class="form-control" placeholder="Your Email"> -->
<!--             </div> -->
<!--             <div class="form-group"> -->
<!--               <textarea name="" id="" cols="30" rows="3" class="form-control" placeholder="Message"></textarea> -->
<!--             </div> -->
<!--             <div class="form-group"> -->
<!--               <input type="submit" value="Send Message" class="btn btn-white py-3 px-5"> -->
<!--             </div> -->
<%--           </form> --%>
<!--     		</div>    			 -->
<!--     		</div> -->
<!--     	</div> -->
<!--     </section> -->

<!--     <footer class="ftco-footer ftco-section img"> -->
<!--     	<div class="overlay"></div> -->
<!--       <div class="container"> -->
<!--         <div class="row mb-5"> -->
<!--           <div class="col-md-3"> -->
<!--             <div class="ftco-footer-widget mb-4"> -->
<!--               <h2 class="ftco-heading-2">About Us</h2> -->
<!--               <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p> -->
<!--               <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5"> -->
<!--                 <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li> -->
<!--                 <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li> -->
<!--                 <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li> -->
<!--               </ul> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div class="col-md-4"> -->
<!--             <div class="ftco-footer-widget mb-4"> -->
<!--               <h2 class="ftco-heading-2">Recent Blog</h2> -->
<!--               <div class="block-21 mb-4 d-flex"> -->
<!--                 <a class="blog-img mr-4" style="background-image: url(../resources/images/image_1.jpg);"></a> -->
<!--                 <div class="text"> -->
<!--                   <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3> -->
<!--                   <div class="meta"> -->
<!--                     <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div> -->
<!--                     <div><a href="#"><span class="icon-person"></span> Admin</a></div> -->
<!--                     <div><a href="#"><span class="icon-chat"></span> 19</a></div> -->
<!--                   </div> -->
<!--                 </div> -->
<!--               </div> -->
<!--               <div class="block-21 mb-4 d-flex"> -->
<!--                 <a class="blog-img mr-4" style="background-image: url(../resources/images/image_2.jpg);"></a> -->
<!--                 <div class="text"> -->
<!--                   <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3> -->
<!--                   <div class="meta"> -->
<!--                     <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div> -->
<!--                     <div><a href="#"><span class="icon-person"></span> Admin</a></div> -->
<!--                     <div><a href="#"><span class="icon-chat"></span> 19</a></div> -->
<!--                   </div> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div class="col-md-2"> -->
<!--              <div class="ftco-footer-widget mb-4 ml-md-4"> -->
<!--               <h2 class="ftco-heading-2">Site Links</h2> -->
<!--               <ul class="list-unstyled"> -->
<!--                 <li><a href="#" class="py-2 d-block">Home</a></li> -->
<!--                 <li><a href="#" class="py-2 d-block">About</a></li> -->
<!--                 <li><a href="#" class="py-2 d-block">Donate</a></li> -->
<!--                 <li><a href="#" class="py-2 d-block">Causes</a></li> -->
<!--                 <li><a href="#" class="py-2 d-block">Event</a></li> -->
<!--                 <li><a href="#" class="py-2 d-block">Blog</a></li> -->
<!--               </ul> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div class="col-md-3"> -->
<!--             <div class="ftco-footer-widget mb-4"> -->
<!--             	<h2 class="ftco-heading-2">Have a Questions?</h2> -->
<!--             	<div class="block-23 mb-3"> -->
<!-- 	              <ul> -->
<!-- 	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li> -->
<!-- 	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li> -->
<!-- 	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li> -->
<!-- 	              </ul> -->
<!-- 	            </div> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!--         <div class="row"> -->
<!--           <div class="col-md-12 text-center"> -->

<!--             <p>Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
<!--   Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
<!--   <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. </p> -->
<!--           </div> -->
<!--         </div> -->
<!--       </div> -->
<!--     </footer> -->
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery.min.js"/>"></script>
  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery-migrate-3.0.1.min.js"/>"></script>
  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/popper.min.js"/>"></script>
  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/bootstrap.min.js"/>"></script>
  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery.easing.1.3.js"/>"></script>
  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery.waypoints.min.js"/>"></script>
  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery.stellar.min.js"/>"></script>
  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/owl.carousel.min.js"/>"></script>
  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery.magnific-popup.min.js"/>"></script>
  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/aos.js"/>"></script>
  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery.animateNumber.min.js"/>"></script>
  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/bootstrap-datepicker.js"/>"></script>
  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/jquery.timepicker.min.js"/>"></script>
  
  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/scrollax.min.js"/>"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  
  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/google-map.js"/>"></script>
  <script src="<c:out value="${pageContext.request.contextPath}/resources/template_HomePageAssoc/js/main.js"/>"></script> 
  </body>
</html>