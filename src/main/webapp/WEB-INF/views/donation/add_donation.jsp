<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
	
			

<title>Add Donation</title>
</head>
<body>

<form name="form" id="form1" action="" method="post">	
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
			
			 <input type="Submit" value="Faire un don"/>
	</form>	
	
	<br>
	<br>
<div id="div2" style="color:#ff0000"></div>
	
	<script>
	
	$(document).ready(function() {
		var ret = false;
		$("#form1").submit(function(event){
	    if(!ret) {
	        //Empeche la validation du formulaire
	        event.preventDefault();
	 
	        var  email = document.getElementById("email").value;
	 
	    	$.ajax(
					{
						url: "${pageContext.request.contextPath}/checkIdentityContributor",
						type: "POST",
						data: {
				
							"email":email
						},
						success: function(result)
						{											
							if(result=="inconnu"){		
							alert("true");
								ret=true;
								 $("#form1")[0].submit();
							}
							else {$("#div2").text("dejà enregistré");
							ret=false;

							
							}; 
						}
					});
	      
	    }//fin if ret
	    
		});
	});
	
	</script>
	
</body>
</html>