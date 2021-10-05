<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<form name="contactForm">
email : <input type="text" name="email" />
mdp:  <input type="mdp" name="mdp" />


</form>
<div class="d-grid">
					<button class="btn btn-primary btn-xl" id="btn">Se connecter</button>
				</div>
				<br>
				<br>
				<div id="div2" style="color:#ff0000"></div>
				<script>
				
					$(document).ready(function(){
						$("#btn").click(function(){
							var  email = document.contactForm.email.value;
							var  mdp =document.contactForm.mdp.value;
							var id = ${id};
										
							$.ajax(
									{
										url: "${pageContext.request.contextPath}/checkEmailAndPasswordPromoter",
										type: "POST",
										data: {
								            "id":id,
											"email":email,
											"mdp":mdp
										},
										success: function(result)
										{
											if(result=="success"){
																					
												var successUrl ="${pageContext.request.contextPath}/dashboardPromoter/home";
												window.location.href = successUrl;   
											}
											else {console.log("fonction error");
												$("#div2").text("Identifiant et/ou Mot de passe incorrect. Merci de réessayer.");  
											}
										}	
										
									});
						});
					});
				</script>
</body>
</html>