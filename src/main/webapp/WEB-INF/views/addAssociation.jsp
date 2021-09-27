
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h1>${headerMessage}</h1>

<form:form method="POST" action="addAssociation" modelAttribute="association">
    <table>
        <tr>
            <td><form:label path="associationName">Nom de L'assos</form:label></td>
            <td><form:input path="associationName"/></td>
        </tr>
        <tr>
            <td><form:label path="rnaNumber">rnaNumber</form:label></td>
            <td><form:input path="rnaNumber"/></td>
        </tr>
        <tr>
            <td><form:label path="address">address</form:label></td>
            <td><form:input path="address"/></td>
        </tr>
        <tr>
            <td><form:label path="zipCode">zipCode</form:label></td>
            <td><form:input path="zipCode"/></td>
        </tr>
        <tr>
            <td><form:label path="city">city</form:label></td>
            <td><form:input path="city"/></td>
        </tr>
        <tr>
            <td><form:label path="country">country</form:label></td>
            <td><form:input path="country"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Submit"/></td>
        </tr>
    </table>
</form:form>
</body>
</html>
