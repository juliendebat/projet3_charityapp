<%@include file="headerAdmin.jsp"%>


<c:choose>
	<c:when test="${!empty sessionScope.assos}">	
		<div class="container-fluid">
			<a href="${pageContext.request.contextPath}/killSession/">Deconnexion</a>
			<p>Vous êtes ${ sessionScope.assos.associationName } !</p>
		</div>
	</c:when>
	<c:otherwise>
//redirection page login
        <br />
	</c:otherwise>
</c:choose>


<%@include file="footerAdmin.jsp"%>
