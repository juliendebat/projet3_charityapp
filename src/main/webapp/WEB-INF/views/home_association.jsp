<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<<<<<<< HEAD

=======
<form:form modelAttribute="association"><form:hidden path="id"/><form:textarea path="associationName"/></form:form>
>>>>>>> 9db6ec955dca275f9a47d9fb354553be622eea39
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body>

<br>
<br>
<br>
	<form action="allAssociations" method="post">
		<input type="submit" value="List All Associations" />
	</form>
</body>
</html>