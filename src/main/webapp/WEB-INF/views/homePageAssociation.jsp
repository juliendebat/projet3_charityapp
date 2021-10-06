<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
  <head>
    <title>Association</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Overpass:300,400,400i,600,700" rel="stylesheet">

    <link rel="stylesheet" href="resources/template/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="resources/template/css/animate.css">
    
    <link rel="stylesheet" href="resources/template/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/template/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="resources/template/css/magnific-popup.css">

    <link rel="stylesheet" href="resources/template/css/aos.css">

    <link rel="stylesheet" href="resources/template/css/ionicons.min.css">

    <link rel="stylesheet" href="resources/template/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="resources/template/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="resources/template/css/flaticon.css">
    <link rel="stylesheet" href="resources/template/css/icomoon.css">
    <link rel="stylesheet" href="resources/template/css/style.css">
	<link href="resources/template/css/style.css" rel="stylesheet" />
  </head>
  <body>
    
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand">ALCMA</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active"><a href="#home" class="nav-link">ACCUEIL</a></li>
          <li class="nav-item"><a href="#about" class="nav-link">A PROPOS</a></li>
          <li class="nav-item"><a href="#don" class="nav-link">DONS</a></li>
          <li class="nav-item"><a href="#image" class="nav-link">IMAGES</a></li>
          <li class="nav-item"><a href="#event" class="nav-link">EVENEMENTS</a></li>
          <li class="nav-item"><a href="#contact" class="nav-link">CONTACT</a></li>
          <li class="nav-item"><a href="${pageContext.request.contextPath}/addAssociation " class="nav-link"><b><i>CONNEXION</i></b></a></li>
        </ul>
      </div>
    </div>
  </nav>
    <!-- END nav -->
   
    <div class="hero-wrap" style="background-image: url('resources/template/images/bg_7.jpg');" data-stellar-background-ratio="0.5" id="home">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-7 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Ne rien faire n'est pas une option dans la vie</h1>

            <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><a href="https://www.youtube.com/watch?v=He3Nu7k40BY" class="btn btn-white btn-outline-white px-4 py-3 popup-vimeo"><span class="icon-play mr-2"></span>Regardez la video</a></p>
          </div>
        </div>
      </div>
    </div>
   
    <section class="ftco-counter ftco-intro" id="section-counter">
    <div class="container">
    		<div class="row no-gutters">
    			<div class="col-md-5 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 color-1 align-items-stretch">
              <div class="text">
              	<span>Sauvez plus de</span>
                <strong class="number" data-number="1432805">0</strong>
                <span>Enfants dans les pays du monde</span>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 color-2 align-items-stretch">
              <div class="text">
              	<h3 class="mb-4">Faites un don</h3>
              	<p>Ne restez pas silencieux face aux difficultés que subissent ces enfants.</p>
              	<p><a href="#" class="btn btn-white px-3 py-2 mt-2">Donner maintenant</a></p>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 color-3 align-items-stretch">
              <div class="text">
              	<h3 class="mb-4">Devenez volontaire</h3>
              	<p>Ne restez pas silencieux face aux difficultés que subissent ces enfants.</p>
              	<p><a href="#" class="btn btn-white px-3 py-2 mt-2">Devenir volontairer</a></p>
              </div>
            </div>
          </div>
    		</div>
    	</div>
    </section>

   <section class="ftco-section" id="about"> 
      <div class="container">
            <h1>C'EST QUOI L'ALCMA?</h1>
            <p>L’<a href="#">ALCMA</a> est une association de loi 1901, créée en 2006. Au-delà de sa mission de protection des Animaux, l’association défend largement ses idéaux démocrates, républicains et égalitaires, et se veut avant tout apolitique. L’initiative de la création de l’association est un acte de scission de ses fondateurs avec la fondation Brigitte Bardot dont ils ont été membres, lors de la prise de position officielle et sans-équivoque des orientations et préférences politiques de sa fondatrice. Elle reste donc très sensible à la potentialité politique des évènements que l’ALCMA mène et tient à rester en dehors de toute prise de partie politique.</p>
          </div>
    </section>


    <section class="ftco-section bg-light">
    	<div class="container-fluid">
    		<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-5 heading-section ftco-animate text-center">
            <h2 class="mb-4">évènements à venir</h2>
            <p>Au loin, derrière le mot montagnes, loin des pays Vokalia et Consonantia, vivent des enfants démunis.</p>
          </div>
        </div>
    		<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="carousel-cause owl-carousel">
	    				<div class="item">
	    					<div class="cause-entry">
		    					<a href="#" class="img" style="background-image: url(resources/template/images/cause-1.jpg);"></a>
		    					<div class="text p-3 p-md-4">
		    						<h3><a href="#">Clean water for the urban area</a></h3>
		    						<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
		    						<span class="donation-time mb-3 d-block">Last donation 1w ago</span>
		                <div class="progress custom-progress-success">
		                  <div class="progress-bar bg-primary" role="progressbar" style="width: 28%" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"></div>
		                </div>
		                <span class="fund-raised d-block">$12,000 raised of $30,000</span>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
	    					<div class="cause-entry">
		    					<a href="#" class="img" style="background-image: url(resources/template/images/cause-2.jpg);"></a>
		    					<div class="text p-3 p-md-4">
		    						<h3><a href="#">Clean water for the urban area</a></h3>
		    						<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
		    						<span class="donation-time mb-3 d-block">Last donation 1w ago</span>
		                <div class="progress custom-progress-success">
		                  <div class="progress-bar bg-primary" role="progressbar" style="width: 28%" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"></div>
		                </div>
		                <span class="fund-raised d-block">$12,000 raised of $30,000</span>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
	    					<div class="cause-entry">
		    					<a href="#" class="img" style="background-image: url(resources/template/images/cause-3.jpg);"></a>
		    					<div class="text p-3 p-md-4">
		    						<h3><a href="#">Clean water for the urban area</a></h3>
		    						<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
		    						<span class="donation-time mb-3 d-block">Last donation 1w ago</span>
		                <div class="progress custom-progress-success">
		                  <div class="progress-bar bg-primary" role="progressbar" style="width: 28%" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"></div>
		                </div>
		                <span class="fund-raised d-block">$12,000 raised of $30,000</span>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
	    					<div class="cause-entry">
		    					<a href="#" class="img" style="background-image: url(resources/template/images/cause-4.jpg);"></a>
		    					<div class="text p-3 p-md-4">
		    						<h3><a href="#">Clean water for the urban area</a></h3>
		    						<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
		    						<span class="donation-time mb-3 d-block">Last donation 1w ago</span>
		                <div class="progress custom-progress-success">
		                  <div class="progress-bar bg-primary" role="progressbar" style="width: 28%" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"></div>
		                </div>
		                <span class="fund-raised d-block">$12,000 raised of $30,000</span>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
	    					<div class="cause-entry">
		    					<a href="#" class="img" style="background-image: url(resources/template/images/cause-5.jpg);"></a>
		    					<div class="text p-3 p-md-4">
		    						<h3><a href="#">Clean water for the urban area</a></h3>
		    						<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
		    						<span class="donation-time mb-3 d-block">Last donation 1w ago</span>
		                <div class="progress custom-progress-success">
		                  <div class="progress-bar bg-primary" role="progressbar" style="width: 28%" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"></div>
		                </div>
		                <span class="fund-raised d-block">$12,000 raised of $30,000</span>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
	    					<div class="cause-entry">
		    					<a href="#" class="img" style="background-image: url(resources/template/images/cause-6.jpg);"></a>
		    					<div class="text p-3 p-md-4">
		    						<h3><a href="#">Clean water for the urban area</a></h3>
		    						<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
		    						<span class="donation-time mb-3 d-block">Last donation 1w ago</span>
		                <div class="progress custom-progress-success">
		                  <div class="progress-bar bg-primary" role="progressbar" style="width: 28%" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"></div>
		                </div>
		                <span class="fund-raised d-block">$12,000 raised of $30,000</span>
		    					</div>
		    				</div>
	    				</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section" id="don">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
            <h2 class="mb-4">Derniers Dons</h2>
            <p>Au loin, derrière le mot montagnes, loin des pays Vokalia et Consonantia, vivent des enfants démunis.</p>
          </div>
        </div>
        <div class="row">
        	<div class="col-lg-4 d-flex mb-sm-4 ftco-animate">
        		<div class="staff">
        			<div class="d-flex mb-4">
        				<div class="img" style="background-image: url(resources/template/images/Hortensia.png);"></div>
        				<div class="info ml-4">
        					<h3><a href="teacher-single.html">Hortensia</a></h3>
        					<span class="position">A donné tout à l'heure</span>
        					<div class="text">
		        				<p>Don de <span>300€</span> pour </p>
		        				<p><a href="#"> Un enfant affamé</a></p>
		        			</div>
        				</div>
        			</div>
        		</div>
        	</div>
        	<div class="col-lg-4 d-flex mb-sm-4 ftco-animate">
        		<div class="staff">
        			<div class="d-flex mb-4">
        				<div class="img" style="background-image: url(resources/template/images/Paola.png);"></div>
        				<div class="info ml-4">
        					<h3><a href="teacher-single.html">Paola</a></h3>
        					<span class="position">A donné tout à l'heure</span>
        					<div class="text">
		        				<p>Don de <span>150€</span> pour </p>
		        				<p><a href="#">Un puit d'eau potable</a></p>
		        			</div>
        				</div>
        			</div>
        		</div>
        	</div>
        	<div class="col-lg-4 d-flex mb-sm-4 ftco-animate">
        		<div class="staff">
        			<div class="d-flex mb-4">
        				<div class="img" style="background-image: url(resources/template/images/aissatou.jpg);"></div>
        				<div class="info ml-4">
        					<h3><a href="teacher-single.html">Aïssatou</a></h3>
        					<span class="position">A donné tout à l'heure</span>
        					<div class="text">
		        				<p>Don de <span>250€</span> pour</p>
		        				<p><a href="#">Un enfant malvoyant</a></p>
		        			</div>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
      </div>
    </section>

    <section class="ftco-gallery">
    	<div class="d-md-flex">
	    	<a href="resources/template/images/cause-2.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/template/images/cause-2.jpg);">
	    		<div class="icon d-flex justify-content-center align-items-center">
	    			<span class="icon-search"></span>
	    		</div>
	    	</a>
	    	<a href="resources/template/images/cause-3.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/template/images/cause-3.jpg);">
	    		<div class="icon d-flex justify-content-center align-items-center">
	    			<span class="icon-search"></span>
	    		</div>
	    	</a>
	    	<a href="resources/template/images/cause-4.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/template/images/cause-4.jpg);">
	    		<div class="icon d-flex justify-content-center align-items-center">
	    			<span class="icon-search"></span>
	    		</div>
	    	</a>
	    	<a href="resources/template/images/cause-5.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/template/images/cause-5.jpg);">
	    		<div class="icon d-flex justify-content-center align-items-center">
	    			<span class="icon-search"></span>
	    		</div>
	    	</a>
    	</div>
    	<div class="d-md-flex">
	    	<a href="resources/template/images/cause-6.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/template/images/cause-6.jpg);">
	    		<div class="icon d-flex justify-content-center align-items-center">
	    			<span class="icon-search"></span>
	    		</div>
	    	</a>
	    	<a href="resources/template/images/image_3.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/template/images/image_3.jpg);">
	    		<div class="icon d-flex justify-content-center align-items-center">
	    			<span class="icon-search"></span>
	    		</div>
	    	</a>
	    	<a href="resources/template/images/image_1.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/template/images/image_1.jpg);">
	    		<div class="icon d-flex justify-content-center align-items-center">
	    			<span class="icon-search"></span>
	    		</div>
	    	</a>
	    	<a href="resources/template/images/image_2.jpg" class="gallery image-popup d-flex justify-content-center align-items-center img ftco-animate" style="background-image: url(resources/template/images/image_2.jpg);">
	    		<div class="icon d-flex justify-content-center align-items-center">
	    			<span class="icon-search"></span>
	    		</div>
	    	</a>
	    </div>
    </section>

    <section class="ftco-section" id="image">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
            <h2 class="mb-4">Quelques images prises</h2>
            <p>Au loin, derrière le mot montagnes, loin des pays Vokalia et Consonantia, vivent des enfants démunis.</p>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20" style="background-image: url('resources/template/images/image_1.jpg');">
              </a>
              <div class="text p-4 d-block">
              	<div class="meta mb-3">
                  <div><a href="#">10 Septembre 2019</a></div>
                  <div><a href="#">Administrateur</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
                <h3 class="heading mt-3">L’ouragan Irma a dévasté la Floride<a href="#"></a></h3>
                <p>Une petite rivière nommée Duden coule près de leur place et lui fournit l'eau nécessaire.</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20" style="background-image: url('resources/template/images/image_2.jpg');">
              </a>
              <div class="text p-4 d-block">
              	<div class="meta mb-3">
                  <div><a href="#">3 janvier 2021</a></div>
                  <div><a href="#">Administrateur</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 5</a></div>
                </div>
                <h3 class="heading mt-3"><a href="#">L'Ebola tue des millions d'enfants en Afrique</a></h3>
                <p>L'ONU tente de sauver ces enfants de cette frayeur</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20" style="background-image: url('resources/template/images/image_3.jpg');">
              </a>
              <div class="text p-4 d-block">
              	<div class="meta mb-3">
                  <div><a href="#">5 AVril 2020</a></div>
                  <div><a href="#">Administrateur</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
                <h3 class="heading mt-3"><a href="#">L'inondation en Indonésie emporte le pays</a></h3>
                <p>l'ALCMA essaye de sauver le monde entier</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light" id="event">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
            <h2 class="mb-4">Nos derniers évènements</h2>
          </div>
        </div>
        <div class="row">
        	<div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20" style="background-image: url('resources/template/images/event-1.jpg');">
              </a>
              <div class="text p-4 d-block">
              	<div class="meta mb-3">
                  <div><a href="#">10 Août 2020</a></div>
                  <div><a href="#">Organisateur</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
                <h3 class="heading mb-4"><a href="#">Don mondial</a></h3>
                <p class="time-loc"><span class="mr-2"><i class="icon-clock-o"></i> 10:30AM-03:30PM</span> <span><i class="icon-map-o"></i> Venue Main Campus</span></p>
                <p>A l'occasion des inondatons à Haïti</p>
                <p><a href="event.html">Participer à l'évènement <i class="ion-ios-arrow-forward"></i></a></p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20" style="background-image: url('resources/template/images/event-2.jpg');">
              </a>
              <div class="text p-4 d-block">
              	<div class="meta mb-3">
                  <div><a href="#">10 Août 2020</a></div>
                  <div><a href="#">Administrateur</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
                <h3 class="heading mb-4"><a href="#">Don mondial</a></h3>
                <p class="time-loc"><span class="mr-2"><i class="icon-clock-o"></i> 10:30AM-03:30PM</span> <span><i class="icon-map-o"></i> Venue Main Campus</span></p>
                <p>Guerre en Syrie.</p>
                <p><a href="event.html">Participer à l'évènement <i class="ion-ios-arrow-forward"></i></a></p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20" style="background-image: url('resources/template/images/event-3.jpg');">
              </a>
              <div class="text p-4 d-block">
              	<div class="meta mb-3">
                  <div><a href="#">3 Octobre 2018</a></div>
                  <div><a href="#">Administrateur</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
                <h3 class="heading mb-4"><a href="#">Don mondial</a></h3>
                <p class="time-loc"><span class="mr-2"><i class="icon-clock-o"></i> 10:30AM-03:30PM</span> <span><i class="icon-map-o"></i> Venue Main Campus</span></p>
                <p>Les enfants meurent de faim à Ethiopie</p>
                <p><a href="event.html">Join Event <i class="ion-ios-arrow-forward"></i></a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section-3 img" style="background-image: url(resources/template/images/bg_3.jpg);" id="contact">
    	<div class="overlay"></div>
    	<div class="container">
    		<div class="row d-md-flex">
    		<div class="col-md-6 d-flex ftco-animate">
    			<div class="img img-2 align-self-stretch" style="background-image: url(resources/template/images/bg_4.jpg);"></div>
    		</div>
    		<div class="col-md-6 volunteer pl-md-5 ftco-animate">
    			<h3 class="mb-3">Devenir volontaire</h3>
    			<form action="#" class="volunter-form">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Votre Nom">
            </div>
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Votre adresse Email">
            </div>
            <div class="form-group">
              <textarea name="" id="" cols="30" rows="3" class="form-control" placeholder="Message"></textarea>
            </div>
            <div class="form-group">
              <input type="submit" value="Envoyez votre Message" class="btn btn-white py-3 px-5">
            </div>
          </form>
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
              <h2 class="ftco-heading-2">A propos</h2>
              <p>Au loin, derrière le mot montagnes, loin des pays Vokalia et Consonantia, vivent des enfants démunis.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-4">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Evenements récents</h2>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(resources/template/images/image_1.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Ne restez pas silencieux.</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(resources/template/images/image_2.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Ne restez pas silencieux.</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-2">
             <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Liens</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">ACCUEIL</a></li>
                <li><a href="#" class="py-2 d-block">A PROPOS</a></li>
                <li><a href="#" class="py-2 d-block">DON</a></li>
                <li><a href="#" class="py-2 d-block">EVENEMENT</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-3">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Posez-nous vos questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">15 rue du Théâtre, 75015 Paris</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+33 7 53 53 53 00</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@notreassociation.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="resources/template/js/jquery.min.js"></script>
  <script src="resources/template/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="resources/template/js/popper.min.js"></script>
  <script src="resources/template/js/bootstrap.min.js"></script>
  <script src="resources/template/js/jquery.easing.1.3.js"></script>
  <script src="resources/template/js/jquery.waypoints.min.js"></script>
  <script src="resources/template/js/jquery.stellar.min.js"></script>
  <script src="resources/template/js/owl.carousel.min.js"></script>
  <script src="resources/template/js/jquery.magnific-popup.min.js"></script>
  <script src="resources/template/js/aos.js"></script>
  <script src="resources/template/js/jquery.animateNumber.min.js"></script>
  <script src="resources/template/js/bootstrap-datepicker.js"></script>
  <script src="resources/template/js/jquery.timepicker.min.js"></script>
  <script src="resources/template/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="resources/template/js/google-map.js"></script>
  <script src="resources/template/js/main.js"></script>
    
  </body>
</html>