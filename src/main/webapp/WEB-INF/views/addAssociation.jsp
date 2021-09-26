<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: warry
  Date: 23/09/2021
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>git
<body>
<h1>${headerMessage}</h1>

<form:form method="POST" action="addAssociation" modelAttribute="association">
    <table>
        <tr>
            <td><form:label path="associassionName">Nom de L'assos</form:label></td>
            <td><form:input path="associassionName"/></td>
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
