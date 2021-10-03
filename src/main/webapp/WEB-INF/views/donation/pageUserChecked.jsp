<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
 <script language="javascript" type="text/javascript" src="resources/js/jquery-3.6.0.min.js"> 
        </script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

Vous êtes ${user.firstname} ${user.lastname }

<p>Pour modifier les dons en cours, merci de contacter l'administateur de l'association</p>
<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>								
									<th>Montant :</th>
									<th>Etat du don:</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="donation" items="${donations}">

									<tr>										
										<td><c:out value="${ donation.amount }" /></td>
										<td><c:out value="${ donation.state }" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
	
					
	<button id="b1">Je souhaite refaire un don pour l'association</button>
	<script language="javascript" type="text/javascript">
		$(document).ready(function() {

			$("#form1").hide();
			$("#b1").click(showform);
		});

		function showform() {
			$("#form1").show();
		}
	</script>
<form name="form" id="form1" action="" method="post">	
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

<a href="${pageContext.request.contextPath}/homePageAssociation/${id}">Retour en page principale</a>
</body>
</html>