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
<button id="btn2">Je suis déjà inscrit ou j'ai déjà fait un don</button>
 <script language="javascript" type="text/javascript" >
                $(document).ready(function(){
                	$("#btn2").click(hide);
                                   
                });                
                function hide(){                   
                $("#1").toggle();
                $("#firstname").toggle();
                $("#2").toggle();
                $("#3").toggle();
                $("#4").toggle();
                $("#5").toggle();
                $("#6").toggle();
                $("#7").toggle();
                $("#8").toggle();
                $("#9").toggle();
                $("#10").toggle();
                $("#11").toggle();
                $("#12").toggle();
                $("#13").toggle();
                $("#age").toggle();
                $("#address").toggle();
                $("#town").toggle();
                $("#mobile").toggle();
                $("#compAdd").toggle();
                $("#funding").toggle();
                $("#14").toggle();
                $("#15").toggle();               
                }      
</script>
<form name="form" id="form1" action="" method="post">	
		<spring:bind  path="user.lastName">
		    <label id="1" for="lastname">Nom :</label>
			<input id="2"type="text" name="${status.expression}"
		    value="${status.value}">
			<br />			
		</spring:bind>
		<spring:bind  path="user.firstName">
		 <label id="3" for="firstname">Prénom :</label>
			<input  id="firstname"type="text" name="${status.expression}"
				value="${status.value}">
			<br />
			
		</spring:bind>
		<spring:bind path="user.email">
		 <label for="email">Mail :</label>
			<input id="email" type="text" name="${status.expression}"
				value="${status.value}">
			<br />			
		</spring:bind>

		<spring:bind  path="user.age">
		 <label id="5" for="age">Age :</label>
			<input id="age" type="text" name="${status.expression}"
				value="${status.value}">
			<br />			
		</spring:bind>
		
		<spring:bind path="user.address">
		 <label id="7" for="adress">Adresse :</label>
			<input id="address" type="text" name="${status.expression}"
				value="${status.value}">
			<br />			
		</spring:bind>
		
			<spring:bind path="user.town">
		 <label id="8" for="town">Ville :</label>
			<input id="town" type="text" name="${status.expression}"
				value="${status.value}">
			<br />			
		</spring:bind>
		
		
			<spring:bind path="user.mobilePhone">
		 <label id="9" for="mobile">Numéro de mobile :</label>
			<input id="mobile" type="text" name="${status.expression}"
				value="${status.value}">
			<br />			
		</spring:bind>
		
			<spring:bind path="user.complementaryAddress">
		 <label id="10" for="compAdd">Complément d'addresse :</label>
			<input id="compAdd" type="text" name="${status.expression}"
				value="${status.value}">
			<br />			
		</spring:bind>
		
		
		
		<spring:bind path="donation.amount">
		 <label id="11" for="amount">Montant du don :</label>
			<input id="funding" type="text" name="${status.expression}"
				value="${status.value}">
			<br />
			</spring:bind>

			<form:label id="13" value="CB :" path="donation.state"></form:label>
			<form:radiobutton  id="12" path="donation.state" value="done"/>  
			<form:label id="14" value="chèque :" path="donation.state"></form:label>
			<form:radiobutton id="15" path="donation.state" value="inprogress"/> 
						
			<input type="Submit" value="Valider"/>
	</form>		
	<br>
	<br>
<div id="div2" style="color:#ff0000"></div>
<a id="div3" href="${pageContext.request.contextPath}/donation/pageUserChecked/${id}">Confirmer mon identitée</a>
	<script>	
	$(document).ready(function(){
		
		$("#div3").hide();

		var ret = false;
		
		$("#form1").submit(function(event){
	    if(!ret) {
	        //Empeche la validation du formulaire
	        event.preventDefault();
	          var email= document.getElementById("email").value;
	          var  idAsso = ${id};	
	        
	    	$.ajax({ url: "${pageContext.request.contextPath}/checkIdentityContributor",
						type: "POST",
						data: {				
							"email":email,
							"idAsso":idAsso
						},
						success: function(result)
						{											
							if(result=="inconnu"){		
								ret=true;
								 $("#form1")[0].submit();
							}
							else {$("#div2").text(result);
							$("#div3").show();
							ret=false;							
							}; 
						},
						error:function(){
							alert("error");
							}
					});	      
	    }//fin if ret	    
		});
	});
	</script>

</body>
</html>