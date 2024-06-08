<%--
  Created by IntelliJ IDEA.
  User: gtarczynski
  Date: 08.06.2024
  Time: 00:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<p>rejestracja</p>
<form:form method="post" modelAttribute="user">
    <label>
        Username: <form:input path="username"/>
    </label>
    <label>
        Password: <form:password path="password"/>
    </label>
    <input type="submit" value="Save">
</form:form>
${empty exists ? "user not exists - ok " : "user exists ! - change username"}
</body>
</html>
