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


	<form action="" method="post">	
	
		<spring:bind path="LoginAssociation.email">
		    <label for="email">Email :</label>
			<input id="email "type="text" name="${status.expression}"
				value="${status.value}">
			<br />			
		</spring:bind>
		
		<spring:bind path="LoginAssociation.password">
		 <label for="mdp">Mot de passe :</label>
			<input id="mdp"type="text" name="${status.expression}"
				value="${status.value}">
			<br />
			</spring:bind>
	
		<input type="submit" value="Se connecter" />
	</form>





</body>
</html>