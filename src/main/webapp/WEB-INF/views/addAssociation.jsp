<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
		
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Charity Raise - Plateforme de Gestion de Dons évènementiel pour les associations</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<c:out value="resources/css/styles.css"/>" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<h1>${headerMessage}</h1>
	
        <form:form method="POST" id="form1" action="addAssociation" modelAttribute="association">
             <table>
                <tr>
                    <td><form:label path="associationName">Nom de l'Association</form:label></td>
                    <td><form:input path="associationName"/></td>
                </tr>
                <tr>
                    <td><form:label path="rnaNumber">Numéro RNA</form:label></td>
                    <td><form:input id="rnaNumber" path="rnaNumber"/></td>
                </tr>
                <tr>
                    <td><form:label path="address">Adresse</form:label></td>
                    <td><form:input path="address"/></td>
                </tr>
                 <tr>
                    <td><form:label path="zipCode">Code Postal</form:label></td>
                    <td><form:input path="zipCode"/></td>
                </tr>
                <tr>
                    <td><form:label path="city">Ville</form:label></td>
                    <td><form:input path="city"/></td>
               </tr>
                  <tr>
                   <td><form:label path="country">Pays</form:label></td>
                    <td><form:input path="country"/></td>
              </tr>
                <tr>
                    <td><form:label path="email">Email de l'Association</form:label></td>
                    <td><form:input id="email" path="email"/></td>
                </tr>
                <tr>
                    <td><form:label path="description">Description / Objet de l'Association</form:label></td>
                    <td><form:input path="description"/></td>
                </tr>

                 <tr>
                    <td><form:label path="password">mot de passe de l'administrateur</form:label></td>
                    <td><form:input id="password" path="password"/></td>
                </tr>
                <tr>
                    <td><form:label path="phone">téléphone de l'administrateur</form:label></td>
                    <td><form:input path="phone"/></td>
                </tr>
                <tr>
                    <td><input type="Submit" value="Valider"/></td>
                </tr>
            </table>
        </form:form>

<div id="div2" style="color:#ff0000"></div>  
    <script>	
	$(document).ready(function(){
		 
		var ret = false;
		
		$("#form1").submit(function(event){
	    if(!ret) {
	        //Empeche la validation du formulaire
	        event.preventDefault();

	         var email = document.getElementById("email").value;
	          var rna = document.getElementById("rnaNumber").value;	         
	
	    	$.ajax(
	    			{ url: "${pageContext.request.contextPath}/checkAssociationAlreadyExist",
						type: "POST",
						data: {				
							"email":email,
							"rna":rna,
						},
						success: function(result)
						{											
							if(result=="success"){
								ret=true;
								 $("#form1")[0].submit();
							}
							else {
								
								$("#div2").text(result);
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
