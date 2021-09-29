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
<%--                     <td><form:label path="promotor.funding">funding</form:label></td> --%>
<%--                     <td><form:input path="promotor.funding"/></td> --%>
<!--                 </tr> -->
<!--                       <tr> -->
<%--                     <td><form:label path="promotor.mdp">mdp</form:label></td> --%>
<%--                     <td><form:input path="promotor.mdp"/></td> --%>
<!--                 </tr> -->
<!--                 <tr> -->
<!--                     <td><input type="submit" value="Submit"/></td> -->
<!--                 </tr> -->
<!--             </table> -->
<%--         </form:form> --%>

<button id="b1">Je représente un promoteur</button>

 <script language="javascript" type="text/javascript" >
                $(document).ready(function(){
                	
                	
                            $("p").hide();
                            $("#b1").click(hide1);                     
                });
                
                function hide1(){
                    
                    $("p").toggle();
                   
                
                }
                
</script>

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
		
		<spring:bind path="promotor.funding">
		 <label for="funding">Montant du financement :</label>
			<input id="funding" type="text" name="${status.expression}"
				value="${status.value}">
			<br />
			</spring:bind>
			
			<spring:bind path="promotor.mdp">
		 <label for="password">Mot de passe :</label>
			<input id="password" type="password" name="${status.expression}"
				value="${status.value}">
			<br />
		</spring:bind>
		<p>Détail de l' entreprise ou de l'association représentée :</p>	
		<spring:bind path="promotorEntity.entityName">
		<p> <label for="entityName">Nom de l'entitée représentée :</label>
			<input id="entityName" type="text" name="${status.expression}"
				value="${status.value}"></p>
			<br />
				</spring:bind>
			
				<spring:bind path="promotorEntity.entityregistrationNumber">
		<p> <label for="entityregistrationNumber">Numéro d'enregistrement :</label>
			<input id="entityregistrationNumber" type="text" name="${status.expression}"
				value="${status.value}"></p>
			<br />
			
		</spring:bind>
		
		<input type="submit" value="Create" />
	</form>





</body>
</html>