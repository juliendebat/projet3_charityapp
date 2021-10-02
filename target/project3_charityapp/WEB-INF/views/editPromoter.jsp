<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit promoter</title>
</head>
<body>
	<h1>${headerMessage}</h1>
	
        <form:form method="POST" action="editPromoter" modelAttribute="promoter">
        
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
<<<<<<< HEAD
                    <td><form:label path="user.zip">Code Postal</form:label></td>
                    <td><form:input path="user.zip"/></td>
=======
                    <td><form:label path="user.zipCode">Code Postal</form:label></td>
                    <td><form:input path="user.zipCode"/></td>
>>>>>>> 9db6ec955dca275f9a47d9fb354553be622eea39
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

</body>
</html>