
<%@include file="headerPromoter.jsp"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:choose>
    <c:when test="${!empty sessionScope.promotersession}">
    
    <div class="container-fluid">
	<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Gestion de l'Evènement ${event.eventName}
					</h6>
				</div>
	<div class="card-body">
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
				<td><form:label path="targetBudget">Budget cible</form:label></td>
				<td><form:input path="targetBudget" /></td>
			</tr>
			
				<tr>
				<td><form:label path="inprogressBudget">Budget en cours</form:label></td>
				<td><form:input path="inprogressBudget" /></td>
							
			<tr>
				<td><input type="submit" value="Valider modification" /></td>
			</tr>
		</table>
	</form:form>
	</div>

	<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Lites des
						Bénévoles disponibles de l'association
					</h6>
				</div>
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
	
	</div>
	

</div>
 </c:when>
<c:otherwise>
    <c:redirect url="/loginAssociation"/>
</c:otherwise>
</c:choose>
<%@include file="footerPromoter.jsp"%>