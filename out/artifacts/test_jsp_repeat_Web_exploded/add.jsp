<%--
  Created by IntelliJ IDEA.
  User: sscerbatiuc
  Date: 5/16/2024
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add employee</title>
</head>
<body>
<h1>Add employee</h1>
<form method="post">
    <div>
        <label for="employee-name">Name</label>
        <input type="text" id="employee-name" name="name">
    </div>
    <div>
        <label for="employee-surname">Surname</label>
        <input type="text" id="employee-surname" name="surname">
    </div>
    <div>
        <label for="employee-birthdate">Birthdate</label>
        <input type="date" id="employee-birthdate" name="birthdate">
    </div>
    <button type="submit">Save</button>
</form>
</body>
</html>
