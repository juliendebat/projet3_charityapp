<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Donation</title>
</head>
<body>

<form action="" method="post">
	
		<spring:bind path="user.lastName">
		    <label for="lastname">Nom :</label>
			<input id="lastname"type="text" name="${status.expression}"
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
		
		
		
		<spring:bind path="donation.amount">
		 <label for="amount">Montant du don :</label>
			<input id="funding" type="text" name="${status.expression}"
				value="${status.value}">
			<br />
			</spring:bind>

			cb : <form:radiobutton path="donation.state" value="done"/>  
			cheque : <form:radiobutton path="donation.state" value="inprogress"/> 
			 
		<input type="submit" id="btn" value="Faire un don" />
	</form>
	
	<div id="div2" style="color:#ff0000"></div>
				<script type="text/javascript">
					$(document).ready(function(){
						$("#btn").click(function(){
							var  email = document.contactForm.email.value;
							;
							var  mdp =document.contactForm.mdp.value;
							$.ajax(
									{
										url: "checkEmailAndPassword",
										type: "POST",
										data: {
											"email":email,
											"mdp":mdp,
										},
										success: function(result)
										{
											if(result=="success"){
												console.log("fonction success");
												console.log(result);
												var successUrl ="${pageContext.request.contextPath}/dashboardAdmin/index"; // might be a good idea to return this URL in the successful AJAX call
												window.location.href = successUrl;
											}
											else {console.log("fonction error");
												$("#div2").text("Identifiant et/ou Mot de passe incorrect. Merci de réessayer.");     }
										},
										error: function() {
											console.log("fonction error");
										}
									});
						});
					});
				</script>
	
</body>
</html>