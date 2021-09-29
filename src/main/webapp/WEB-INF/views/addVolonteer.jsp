<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script language="javascript" type="text/javascript" src="resources/js/jquery-3.6.0.min.js"> 
        </script>
<title>Home</title>
</head>
<body>

<!--  <form:form method="POST" action="addUser" modelAttribute="user"> -->
<!--              <table> -->
<!--                 <tr> -->
<!--                     <td><form:label path="firstName">First Name</form:label></td> -->
<!--                     <td><form:input path="firstName"/></td> -->
<!--                 </tr> -->
<!--                 <tr> -->
<!--                     <td><form:label path="lastName">LastName</form:label></td> -->
<!--                     <td><form:input path="lastName"/></td> -->
<!--                 </tr> -->
<!--                 <tr> -->
<!--                     <td><input type="submit" value="Submit"/></td> -->
<!--                 </tr> -->
<!--             </table> -->
<!--         </form:form> -->

	<h1>${headerMessage}</h1>

	<form action="addVolonteer" method="post" modelAttribute="volonteer">
	
		<spring:bind path="user.lastName">
		    <label for="lastname">Nom :</label>
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

		<spring:bind path="user.age">
		 <label for="age">Age :</label>
			<input id="age" type="text" name="${status.expression}"
				value="${status.value}">
			<br />			
		</spring:bind>
		
		<spring:bind path="user.address">
		 <label for="address">Adresse :</label>
			<input id="address" type="text" name="${status.expression}"
				value="${status.value}">
			<br />			
		</spring:bind>
		
			<spring:bind path="user.town">
		 <label for="town">Ville :</label>
			<input id="town" type="text" name="${status.expression}"
				value="${status.value}">
			<br />			
		</spring:bind>
		
		
			<spring:bind path="user.mobilePhone">
		 <label for="mobile">Numéro de mobile :</label>
			<input id="mobile" type="text" name="${status.expression}"
				value="${status.value}">
			<br />			
		</spring:bind>
		
			<spring:bind path="user.complementaryAddress">
		 <label for="compAdd">Complément d'addresse :</label>
			<input id="compAdd" type="text" name="${status.expression}"
				value="${status.value}">
			<br />			
		</spring:bind>
		
		<spring:bind path="volonteer.dispo">
		 <label for="dispo">Disponibilités :</label>
			<input id="dispo" type="text" name="${status.expression}"
				value="${status.value}">
			<br />
			</spring:bind>
			
			<spring:bind path="volonteer.mdp">
		 <label for="password">Mot de passe :</label>
			<input id="password" type="password" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>

		<input type="submit" value="Create" />
	</form>
<%--  onclick="${pageContext.request.contextPath}/allEvents" --%>

</body>
</html>