<%--
  Created by IntelliJ IDEA.
  User: gtarczynski
  Date: 10.06.2024
  Time: 23:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form modelAttribute="order" method="post">
    <label>
        Dish: <form:select path="dishes" itemLabel="name" itemValue="id" items="${dishes}"/><br>
    </label>
    <input type="submit" value="add">
</form:form>
</body>
</html>
