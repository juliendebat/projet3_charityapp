<%@include file="headerAdmin.jsp"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:choose>
    <c:when test="${!empty sessionScope.assos}">
    
    <div class="container-fluid">
		<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Modifier mon profil
					</h6>
				</div>
      
     <form:form method="POST" action="editAssociation" modelAttribute="association">
        
        	<form:hidden path="id" /> 
             <table>
             
                <tr>
                    <td><form:label path="associationName">Nom de l'Association :</form:label></td>
                    <td><form:input path="associationName"/></td>
                </tr>
                <tr>
                    <td><form:label path="rnaNumber">Numéro RNA :</form:label></td>
                    <td><form:input path="rnaNumber"/></td>
                </tr>
                <tr>
                    <td><form:label path="address">Adresse :</form:label></td>
                    <td><form:input path="address"/></td>
                </tr>
                  <tr>
                    <td><form:label path="city">Ville :</form:label></td>
                    <td><form:input path="city"/></td>
                </tr>
                  <tr>
                    <td><form:label path="country">Pays :</form:label></td>
                    <td><form:input path="country"/></td>
                </tr>
                  <tr>
                    <td><form:label path="email">Email :</form:label></td>
                    <td><form:input path="email"/></td>
                </tr>
                 <tr>
                    <td><form:label path="password">Mot de passe :</form:label></td>
                    <td><form:input path="password"/></td>
                </tr>
                 <tr>
                    <td><form:label path="description">Description :</form:label></td>
                    <td><form:input path="description"/></td>
                </tr>
                <tr>
                    <td><form:label path="phone">Phone :</form:label></td>
                    <td><form:input path="phone"/></td>
                </tr>
                <tr>
                    <td><form:label path="theme">Thème :</form:label></td>
                    <td><form:input path="theme"/></td>
                </tr>
                <tr>
                    <td><form:label path="photo">Logo :</form:label></td>
                    <td><form:input path="photo"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Valider"/></td>
                </tr>
            </table>
        </form:form>
</div>
</div>
</c:when>
<c:otherwise>
    <c:redirect url="/loginAssociation"/>
</c:otherwise>
</c:choose>
<%@include file="footerAdmin.jsp"%>