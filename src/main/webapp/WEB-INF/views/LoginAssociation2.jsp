<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script language="javascript" type="text/javascript" src="resources/js/jquery-3.6.0.min.js"> 
        </script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Home</title>
</head>
<body>


<!-- 	<form name="form1" method="post" >	 -->
	
<%-- 		<spring:bind path="LoginAssociation.email"> --%>
<!-- 		    <label for="email">Email :</label> -->
<%-- 			<input id="email"type="text" name="${status.expression}" --%>
<%-- 				value="${status.value}"> --%>
<!-- 			<br />			 -->
<%-- 		</spring:bind> --%>
		
<%-- 		<spring:bind path="LoginAssociation.password"> --%>
<!-- 		 <label for="mdp">Mot de passe :</label> -->
<%-- 			<input id="mdp"type="text" name="${status.expression}" --%>
<%-- 				value="${status.value}"> --%>
<!-- 			<br /> -->
<%-- 			</spring:bind> --%>
	
<!-- 		<button id="button" type="submit">Se Connecter</button> -->
<!-- 	</form> -->

   <form name="addForm">
          <label for="id">Identifiant : </label>
          <input id="id" type="text" name="email"/><br>
           <label for="pass">Mot de passe : </label>
          <input id="pass" type="password" name="mdp"/>
           </form>
  
        <button id="bouton">Se connecter</button>
        
<div id="div2"></div>
 <script> 
  
            $(document).ready(function(){
        
            $("#bouton").click(function(){
        
            	var  email = document.addForm.email.value;
                var  mdp = document.addForm.mdp.value;
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
               	 $("#div2").text("error de dc o");     }
               	
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