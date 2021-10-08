<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
     "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC - Hibernate File Upload to Database Demo</title>
</head>
<body>
    <div align="center">
        <h1>Spring MVC - Hibernate File Upload to Database Demo</h1>
        <form:form method="POST" action="upload" modelAttribute="file" enctype="multipart/form-data">
      
            <table border="0">
                <tr>
                    <td>Pick file :</td>
                    <td><input type="file" name="fileName" size="50" /></td>
                </tr>

                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Upload" /></td>
                </tr>
            </table>
        </form:form>

    </div>
</body>
</html>