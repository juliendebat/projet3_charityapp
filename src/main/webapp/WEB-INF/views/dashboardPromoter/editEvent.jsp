<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit event</title>
</head>
<body>
	<h1>${headerMessage}</h1>

	<form:form method="POST" action="editevent" modelAttribute="event">

		<form:hidden path="id" />
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
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>

</body>
</html>