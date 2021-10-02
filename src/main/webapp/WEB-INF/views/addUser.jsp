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
	
        <form:form method="POST" action="addUser" modelAttribute="user">
             <table>
             	<tr>
                    <td><form:label path="lastName">Nom</form:label></td>
                    <td><form:input path="lastName"/></td>
                </tr>
                <tr>
                    <td><form:label path="firstName">Prénom</form:label></td>
                    <td><form:input path="firstName"/></td>
                </tr>
                <tr>
                    <td><form:label path="age">Âge</form:label></td>
                    <td><form:input path="age"/></td>
                </tr>
                <tr>
                    <td><form:label path="email">Email de l'utilisateur</form:label></td>
                    <td><form:input path="email"/></td>
                </tr>
                <tr>
                    <td><form:label path="address">Adresse</form:label></td>
                    <td><form:input path="address"/></td>
                </tr>
                <tr>
                    <td><form:label path="complementaryAddress">Adresse complémentaire</form:label></td>
                    <td><form:input path="complementaryAddress"/></td>
                </tr>
                 <tr>
                    <td><form:label path="zip">Code Postal</form:label></td>
                    <td><form:input path="zip"/></td>
                </tr>
                <tr>
                    <td><form:label path="town">Ville</form:label></td>
                    <td><form:input path="town"/></td>
                </tr>
<!--                 <tr> -->
<<<<<<< HEAD
=======

<%--                     <td><form:label path="userName">UserName</form:label></td> --%>
<%--                     <td><form:input path="userName"/></td> --%>
<!--                 </tr> -->

>>>>>>> 9db6ec955dca275f9a47d9fb354553be622eea39
<%--                     <td><form:label path="country">Pays</form:label></td> --%>
<%--                     <td><form:input path="country"/></td> --%>
<!--                 </tr> -->
                <tr>
                    <td><form:label path="mobilePhone">Téléphone</form:label></td>
                    <td><form:input path="mobilePhone"/></td>
                </tr>
                
                
<<<<<<< HEAD
=======

>>>>>>> 9db6ec955dca275f9a47d9fb354553be622eea39
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>

</body>
</html>