<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" type="text/javascript"
	src="resources/js/jquery-3.6.0.min.js">
	
</script>
<title>S'inscrire comme bénévole</title>
</head>
<body>


  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/homePageAssociation/${association.id}">${association.associationName}</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"><a href="${pageContext.request.contextPath}/homePageAssociation/${association.id}" class="nav-link">Accueil</a></li>
          <li class="nav-item"><a href="${pageContext.request.contextPath}/donation/add_donation/${association.id}" class="nav-link">Faire un Don</a></li>
          <li class="nav-item"><a href="${pageContext.request.contextPath}/allEvents/${association.id}" class="nav-link">Evenements</a></li>
          <li class="nav-item"><a href="${pageContext.request.contextPath}/subscribe/${association.id}" class="nav-link">S'inscrire</a></li>
          <li class="nav-item"><a href="causes.html" class="nav-link">Causes</a></li>
          <li class="nav-item"><a href="donate.html" class="nav-link">Donate</a></li>
          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
          <li class="nav-item"><a href="gallery.html" class="nav-link">Gallery</a></li>
          <li class="nav-item"><a href="event.html" class="nav-link">Events</a></li>
          <li class="nav-item active"><a href="contact.html" class="nav-link">Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>

 <section class="ftco-section contact-section ftco-degree-bg">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
          <div class="col-md-12 mb-4">
          	<h4 class="mb-4">Do you have any questions?</h4>
            <form action="#">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Your Name">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Your Email">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Subject">
              </div>
              <div class="form-group">
                <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
              </div>
            </form>
          
          </div>

          <div class="col-md-6" id="map"></div>
        </div>
      </div>
    </section>


	<h1>${headerMessage}</h1>

	<form action="" method="post">

		<spring:bind path="user.lastName">
			<label for="lastname">Nom :</label>
			<input id="lastname " type="text" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>
		<spring:bind path="user.firstName">
			<label for="firstname">Prénom :</label>
			<input id="firstname" type="text" name="${status.expression}"
				value="${status.value}">
			<br />

		</spring:bind>
		<spring:bind path="user.email">
			<label for="email">Mail :</label>
			<input id="email" type="text" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="user.age">
			<label for="age">Age :</label>
			<input id="age" type="text" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="user.address">
			<label for="adress">Adresse :</label>
			<input id="address" type="text" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="user.town">
			<label for="town">Ville :</label>
			<input id="town" type="text" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>


		<spring:bind path="user.mobilePhone">
			<label for="mobile">Numéro de mobile :</label>
			<input id="mobile" type="text" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="user.complementaryAddress">
			<label for="compAdd">Complément d'addresse :</label>
			<input id="compAdd" type="text" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="volonteer.dispo">
			<label for="dispo">Disponibilités :</label>
			<input id="dispo" type="text" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>
		
		<select name="eventList">

			<c:forEach var="event" items="${eventList}">
					<option id="eventName" name="eventName"
						value="${event.eventName}" selected="selected">${event.eventName}</option>
				</c:forEach>

		</select>

		<input type="submit" value="Create" />
	</form>

</body>
</html>