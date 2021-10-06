<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Charity Raise - Plateforme de Gestion de Dons évènementiel pour les associations</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<c:out value="resources/css/styles.css"/>" rel="stylesheet" />
</head>
<body>
	<h1>${headerMessage}</h1>
	
        <form:form method="POST" action="" modelAttribute="event">
             <table>
               <tr>
				<td><form:label path="eventName">Nom de l'évènement</form:label></td>
				<td><form:input path="eventName" /></td>
			</tr>
			<tr>
				<td><form:label path="eventDescription">Description de l'évènement</form:label></td>
				<td><form:input path="eventDescription" /></td>
			</tr>
			<tr>
				<td><form:label path="eventCategory">Catégorie de l'évènement</form:label></td>
				<td><form:input path="eventCategory" /></td>
			</tr>
			<tr>
				<td><form:label path="eventCity">Ville de l'évènement</form:label></td>
				<td><form:input path="eventCity" /></td>
			</tr>
			<tr>
				<td><form:label path="eventCountry">Pays</form:label></td>
				<td><form:input path="eventCountry" /></td>
			</tr>
			<tr>
				<td><form:label path="eventDateStart">Date de début</form:label></td>
				<td><form:input path="eventDateStart" /></td>
			</tr>
			<tr>
				<td><form:label path="eventDateEnd">Date de fin</form:label></td>
				<td><form:input path="eventDateEnd" /></td>
			</tr>
			<tr>
				<td><form:label path="eventThumbnailLink">Lien photo</form:label></td>
				<td><form:input path="eventThumbnailLink" /></td>
			</tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>
</body>
</html>