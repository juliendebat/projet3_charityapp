<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit association</title>
</head>
<body>
	<h1>${headerMessage}</h1>
	
        <form:form method="POST" action="editAssociation" modelAttribute="association">
        
        	<form:hidden path="id" /> 
             <table>
                <tr>
                    <td><form:label path="associationName">Nom de l'Association</form:label></td>
                    <td><form:input path="associationName"/></td>
                </tr>
                <tr>
                    <td><form:label path="rnaNumber">Numéro RNA</form:label></td>
                    <td><form:input path="rnaNumber"/></td>
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
