<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Charity Raise - Plateforme de Gestion de Dons
	évènementiel pour les associations</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
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
<body>
	<br>
	<br>
	<br>
	<br>
	<h3>List of all events</h3>
	${message}
	<br>
	<br>
	<table border="1px" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<th>Nom de l'evenement</th>
				<th>Description</th>
				<th>Category</th>
				<th>Ville</th>
				<th>Pays</th>
				<th>Date de début</th>
				<th>Date de fin</th>
				<th>Lien vers l'événement</th>
				<th>Participer?</th>

			</tr>
		</thead>

		<tbody>
			<c:forEach var="event" items="${eventList}">
				<tr>
					<td>${event.eventName}</td>
					<td>${event.eventDescription}</td>
					<td>${event.eventCategory}</td>
					<td>${event.eventCity}</td>
					<td>${event.EventCountry}</td>
					<td>${event.EventDateStart}</td>
					<td>${event.EventDateEnd}</td>
					<td>${event.EventThumbnailLink}</td>
					<td><a href="${pageContext.request.contextPath}/validateEventParticipation/${event.id}">Participer</a></td>
				</tr>
			</c:forEach>

		</tbody>


	</table>
</body>
</html>