
<%@include file="headerPromoter.jsp"%>
<c:choose>
    <c:when test="${!empty sessionScope.promotersession}">
    
    <div class="container-fluid">

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
				<td><form:label path="inprogressBudget">Budget en Cours</form:label></td>
				<td><form:input path="inprogressBudget" /></td>
			</tr>
			<tr>
				<td><form:label path="targetBudget">Prévision Budget</form:label></td>
				<td><form:input path="targetBudget"></form:input></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>

</div>
 </c:when>
<c:otherwise>
    <c:redirect url="/loginAssociation"/>
</c:otherwise>
</c:choose>
<%@include file="footerPromoter.jsp"%>