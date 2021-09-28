<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>DasboardAdmin</h2>


	<p>
		<c:if
			test="${!empty sessionScope.assos}">
			<p>Vous êtes ${ sessionScope.assos.associationName } !</p>
			<p>Association Id : ${ sessionScope.assos.id } !</p>
		</c:if>
	</p>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: warry
  Date: 23/09/2021
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>


