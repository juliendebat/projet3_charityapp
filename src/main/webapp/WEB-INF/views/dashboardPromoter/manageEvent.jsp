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
				<td><form:label path="targetBudget">Lien photo</form:label></td>
				<td><form:input path="targetBudget" /></td>
			</tr>
			
				<tr>
				<td><form:label path="inprogressBudget">Lien photo</form:label></td>
				<td><form:input path="inprogressBudget" /></td>
			</tr>
				<tr>
				<td><form:label path="volunterRequired">Lien photo</form:label></td>
				<td><form:input path="volunterRequired" /></td>
			</tr>
				<tr>
				<td><form:label path="volunterinProgress">Lien photo</form:label></td>
				<td><form:input path="volunterinProgress" /></td>
			</tr>
				
			<tr>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
	
	<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>Nom</th>
									<th>Prenom</th>
									<th>email</th>
									<th>N° Télephone</th>
									<th>Age</th>
									<th>Adresse</th>
									<th>Complement d'adresse</th>
									<th>Code postal</th>
									<th>Ville</th>
									<th>Choisir</th>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach var="volonteer" items="${volunters}">

									<tr>
										<td><c:out value="${ volonteer.user.firstName }" /></td>
										<td><c:out value="${ volonteer.user.lastName }" /></td>
										<td> <td><a href="${pageContext.request.contextPath}/dashboardAdmin/mailForm/${users.id}"><c:out value="${ volonteer.user.email }" /></a></td>
										<td><c:out value="${ volonteer.user.mobilePhone }" /></td>
										<td><c:out value="${ volonteer.user.age }" /></td>
										<td><c:out value="${ volonteer.user.address }" /></td>
										<td><c:out value="${ volonteer.user.complementaryAddress }" /></td>
										<td><c:out value="${ volonteer.user.zipCode }" /></td>
										<td><c:out value="${ volonteer.user.town }" /></td>
									
																		
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
	
	
	

</body>
</html>