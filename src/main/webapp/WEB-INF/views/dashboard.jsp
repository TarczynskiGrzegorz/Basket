<%--
  Created by IntelliJ IDEA.
  User: gtarczynski
  Date: 08.06.2024
  Time: 00:44
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
dashboard  lallala
<form action="<c:url value="/logout"/>" method="post">
    <input class="fa fa-id-badge" type="submit" value="Sign out">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
</body>
</html>
