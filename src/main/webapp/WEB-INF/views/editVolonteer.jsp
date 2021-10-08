<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit association</title>
</head>
<body>
	<h1>${headerMessage}</h1>

<form:form method="POST" action="editVolonteer" modelAttribute="volonteer">
        
        	<form:hidden path="id"/>

             <table>
                <tr>
                    <td><form:label path="user.lastName">Nom de l'organisateur</form:label></td>
                    <td><form:input path="user.lastName"/></td>
                </tr>
                <tr>
                    <td><form:label path="user.firstName">Prénom</form:label></td>
                    <td><form:input path="user.firstName"/></td>
                </tr>
                 <tr>
                    <td><form:label path="user.email">email</form:label></td>
                    <td><form:input path="user.email"/></td>
                </tr>
                 <tr>
                    <td><form:label path="user.age">Âge</form:label></td>
                    <td><form:input path="user.age"/></td>
                </tr>
                 <tr>
                    <td><form:label path="user.address">adresse</form:label></td>
                    <td><form:input path="user.address"/></td>
                </tr>
                 <tr>
                    <td><form:label path="user.zip">Code Postal</form:label></td>
                    <td><form:input path="user.zip"/></td>
                </tr>
                 <tr>
                    <td><form:label path="user.town">Ville</form:label></td>
                    <td><form:input path="user.town"/></td>
                </tr>
                 <tr>
                    <td><form:label path="user.mobilePhone">téléphone</form:label></td>
                    <td><form:input path="user.mobilePhone"/></td>
                </tr>
<!--                 <tr> -->
<%--                     <td><form:label path="event.eventName">Nom de l'évènement</form:label></td> --%>
<%--                     <td><form:input path="event.eventName"/></td> --%>
<!--                 </tr> -->
<!--                  <tr> -->
<%--                     <td><form:label path="event.eventDescription">Nom de l'évènement</form:label></td> --%>
<%--                     <td><form:input path="event.eventDescription"/></td> --%>
<!--                 </tr> -->
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>





	

<%-- 	<form action="" method="post"> --%>

<%-- 		<form:input type="hidden" path="id" id="id" /> --%>
<%-- 		<spring:bind path="user.lastName"> --%>
<%-- 			<form:input path="user.lastName" id="lastName" /> --%>
<%-- 		</spring:bind> --%>
<%-- 		<spring:bind path="user.firstName"> --%>
<%-- 			<form:input path="user.firstName" id="firstName" /> --%>
<%-- 		</spring:bind> --%>
<%-- 		<spring:bind type="hidden" path="user.email"> --%>
<%-- 			<form:input path="user.email" id="email" /> --%>
<%-- 		</spring:bind> --%>
<%-- 		<spring:bind type="hidden" path="user.age"> --%>
<%-- 			<form:input path="user.age" id="age" /> --%>
<%-- 		</spring:bind> --%>
<%-- 		<spring:bind type="hidden" path="user.address"> --%>
<%-- 			<form:input path="user.address" id="address" /> --%>
<%-- 		</spring:bind> --%>
<%-- 		<spring:bind type="hidden" path="user.zip"> --%>
<%-- 			<form:input path="user.zip" id="zip" /> --%>
<%-- 		</spring:bind> --%>
<%-- 		<spring:bind type="hidden" path="user.town"> --%>
<%-- 			<form:input path="user.town" id="town" /> --%>
<%-- 		</spring:bind> --%>
<%-- 		<spring:bind type="hidden" path="user.mobilePhone"> --%>
<%-- 			<form:input path="user.mobilePhone" id="mobilePhone" /> --%>
<%-- 		</spring:bind> --%>
<%-- 		<spring:bind type="hidden" path="user.complementaryAddress"> --%>
<%-- 			<form:input path="user.complementaryAddress" --%>
<%-- 				id="complementaryAddress" /> --%>
<%-- 		</spring:bind> --%>
<%-- 		<spring:bind type="hidden" path="user.hasDonated"> --%>
<%-- 			<form:input path="user.hasDonated" id="hasDonated" /> --%>
<%-- 		</spring:bind> --%>
<%-- 		<spring:bind type="hidden" path="user.complementaryAddress"> --%>
<%-- 			<form:input path="user.association" id="association" /> --%>
<%-- 		</spring:bind> --%>
<%-- 		<spring:bind path="events"> --%>
<!-- 			<select id="events"> -->
<%-- 				<c:forEach var="e" items="events"> --%>
<%-- 					<form:option path="e.eventName" id="eventName" value="e.eventName"/> --%>
<%-- 					<form:option type="hidden" path="e.eventDescription" id="eventDescription" value="e.eventDescription"/> --%>
<%-- 					<form:option type="hidden" path="e.eventCategory" id="eventCategory" value="e.eventCategory"/> --%>
<%-- 					<form:option type="hidden" path="e.eventCity" id="eventCity" value="e.eventCity"/> --%>
<%-- 					<form:option type="hidden" path="e.eventCountry" id="eventCountry" value="e.eventCountry" /> --%>
<%-- 					<form:option type="hidden" path="e.eventDateStart" id="eventDateStart" value="e.eventDateStart"/> --%>
<%-- 					<form:option type="hidden" path="e.eventDateEnd" id="eventDateEnd" value="e.eventDateEnd"/> --%>
<%-- 					<form:option type="hidden" path="e.eventThumbnailLink" id="eventThumbnailLink" value="e.eventThumbnailLink" /> --%>
<%-- 					<form:option type="hidden" path="e.association" id="association" value="e.association"/> --%>
<%-- 				</c:forEach> --%>
<!-- 			</select> -->
<%-- 		</spring:bind> --%>
<!-- 		<input type="submit" value="Create" /> -->
<%-- 	</form> --%>


</body>
</html>
