<%--
  Created by IntelliJ IDEA.
  User: sscerbatiuc
  Date: 5/23/2024
  Time: 7:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit employee</title>
</head>
<body>
<h1>Edit employee</h1>
<c:if test="${requestScope.error != null}">
    <c:out value="${requestScope.error}"/>
</c:if>
<c:if test="${requestScope.error == null}">
    <form method="post">
        <div>
            <label for="employee-name">Name</label>
            <input type="text" id="employee-name" name="name" value="${requestScope.employee.name}">
        </div>
        <div>
            <label for="employee-surname">Surname</label>
            <input type="text" id="employee-surname" name="surname" value="${requestScope.employee.surname}">
        </div>
        <div>
            <label for="employee-birthdate">Birthdate</label>
            <input type="date" id="employee-birthdate" name="birthdate" value="${requestScope.employee.birthdate}">
        </div>
        <button type="submit">Save</button>
    </form>
</c:if>
</body>
</html>
