<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit promotor</title>
</head>
<body>
	<h1>${headerMessage}</h1>
	
        <form:form method="POST" action="editPromotor" modelAttribute="promotor">
        
        	<form:hidden path="id" /> 
             <table>
                <tr>
                    <td><form:label path="promotorName">Nom de promotor</form:label></td>
                    <td><form:input path="promotorName"/></td>
                </tr>
                <tr>
                    <td><form:label path="address">UserName</form:label></td>
                    <td><form:input path="address"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>

</body>
</html>