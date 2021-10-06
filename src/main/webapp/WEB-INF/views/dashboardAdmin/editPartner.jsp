<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Partner</title>
</head>
<body>
	<h1>${headerMessage}</h1>
	
       <form action="" method="post">

	
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
		 <label for="adress">Adresse :</label>
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
		
		<spring:bind path="partner.funding">
		 <label for="funding">Montant du financement :</label>
			<input id="funding" type="text" name="${status.expression}"
				value="${status.value}">
			<br />
			</spring:bind>
			
			<spring:bind path="partner.password">
		 <label for="password">Mot de passe :</label>
			<input id="password" type="password" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>
		<spring:bind path="entity.entityName">
		<p> <label for="entityName">Nom de l'entitée représentée :</label>
			<input id="entityName" type="text" name="${status.expression}"
				value="${status.value}"></p>
			<br />
		</spring:bind>
			
				<spring:bind path="entity.entityregistrationNumber">
		<p> <label for="entityregistrationNumber">Numéro d'enregistrement :</label>
			<input id="entityregistrationNumber" type="text" name="${status.expression}"
				value="${status.value}"></p>
			<br />
			
		</spring:bind>
		
		<input type="submit" value="Modifier" />
	</form>

</body>
</html>