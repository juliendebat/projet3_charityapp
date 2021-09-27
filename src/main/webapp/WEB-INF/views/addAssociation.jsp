<<<<<<< HEAD
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: warry
  Date: 23/09/2021
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>git
<body>
<h1>${headerMessage}</h1>

<form:form method="POST" action="addAssociation" modelAttribute="association">
    <table>
        <tr>
            <td><form:label path="associassionName">Nom de L'assos</form:label></td>
            <td><form:input path="associassionName"/></td>
        </tr>
        <tr>
            <td><form:label path="rnaNumber">rnaNumber</form:label></td>
            <td><form:input path="rnaNumber"/></td>
        </tr>
        <tr>
            <td><form:label path="address">address</form:label></td>
            <td><form:input path="address"/></td>
        </tr>
        <tr>
            <td><form:label path="zipCode">zipCode</form:label></td>
            <td><form:input path="zipCode"/></td>
        </tr>
        <tr>
            <td><form:label path="city">city</form:label></td>
            <td><form:input path="city"/></td>
        </tr>
        <tr>
            <td><form:label path="country">country</form:label></td>
            <td><form:input path="country"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Submit"/></td>
        </tr>
    </table>
</form:form>
</body>
</html>
=======
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<%--         <link href="<c:out value="resources/css/styles.css"/>" rel="stylesheet" /> --%>
</head>
<body>
	<h1>${headerMessage}</h1>
	
        <form:form method="POST" action="addAssociation" modelAttribute="association">
             <table>
                <tr>
                    <td><form:label path="associationName">Nom de l'Association</form:label></td>
                    <td><form:input path="associationName"/></td>
                </tr>
                <tr>
                    <td><form:label path="rnaNumber">Numéro RNA</form:label></td>
                    <td><form:input path="rnaNumber"/></td>
                </tr>
                <tr>
                    <td><form:label path="address">Adresse</form:label></td>
                    <td><form:input path="address"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>

</body>
</html>
>>>>>>> 6a6af6cb4137a5f1c8898152a7a6911b66c3c8a8
