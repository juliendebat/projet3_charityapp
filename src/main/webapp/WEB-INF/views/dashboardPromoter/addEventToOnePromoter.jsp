
<%@include file="headerPromoter.jsp"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:choose>
    <c:when test="${!empty sessionScope.promotersession}">
    
    <div class="container-fluid">
		<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Ajouter un nouvel évènement
					</h6>
				</div>
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
				<td><form:label path="targetBudget">Budget cible</form:label></td>
				<td><form:input path="targetBudget" /></td>
			</tr>
			
				<tr>
				<td><form:label path="inprogressBudget">Budget en cours</form:label></td>
				<td><form:input path="inprogressBudget" /></td>
							
			<tr>
			<br>
                <tr>
                    <td><input type="submit" value="Ajouter"/></td>
                </tr>
            </table>
        </form:form>
</div>
</div>
 </c:when>
<c:otherwise>
    <c:redirect url="/loginPromoter"/>
</c:otherwise>
</c:choose>
<%@include file="footerPromoter.jsp"%>