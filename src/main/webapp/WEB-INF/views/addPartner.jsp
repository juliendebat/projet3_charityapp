<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>
	<h1>${headerMessage}</h1>
	
<%--         <form:form method="POST" action="addUser" > --%>
<!--              <table> -->
<!--                 <tr> -->
<%--                     <td><form:label path="user.firstName">First Name</form:label></td> --%>
<%--                     <td><form:input path="user.firstName"/></td> --%>
<!--                 </tr> -->
<!--                 <tr> -->
<%--                     <td><form:label path="user.lastName">LastName</form:label></td> --%>
<%--                     <td><form:input path="user.lastName"/></td> --%>
<!--                 </tr> -->
<!--                 <tr> -->
<%--                     <td><form:label path="user.email">email</form:label></td> --%>
<%--                     <td><form:input path="user.email"/></td> --%>
<!--                 </tr> -->
<!--                       <tr> -->
<%--                     <td><form:label path="partner.funding">funding</form:label></td> --%>
<%--                     <td><form:input path="partner.funding"/></td> --%>
<!--                 </tr> -->
<!--                       <tr> -->
<%--                     <td><form:label path="partner.mdp">mdp</form:label></td> --%>
<%--                     <td><form:input path="partner.mdp"/></td> --%>
<!--                 </tr> -->
<!--                 <tr> -->
<!--                     <td><input type="submit" value="Submit"/></td> -->
<!--                 </tr> -->
<!--             </table> -->
<%--         </form:form> --%>




	<form action="" method="post">
		<spring:bind path="user.lastName">
		    <label for="lastename">Nom :</label>
			<input id="lastname "type="text" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>
		<spring:bind path="user.firstName">
		 <label for="firstname">Prénom :</label>
			<input id="firstname"type="text" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>
		<spring:bind path="user.email">
		 <label for="email">Mail :</label>
			<input id="email" type="text" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="partner.funding">
		 <label for="funding">Montant du financement :</label>
			<input id="funding" type="text" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>
		<spring:bind path="partner.mdp">
		 <label for="password">Mot de passe :</label>
			<input id="password" type="password" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>
		<input type="submit" value="Create" />
	</form>





</body>
</html>