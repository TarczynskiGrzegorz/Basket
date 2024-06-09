<%--
  Created by IntelliJ IDEA.
  User: gtarczynski
  Date: 09.06.2024
  Time: 21:07
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
<form:form modelAttribute="product" method="post">
    <label>
        Name: <form:input path="name" value="${product.name}"/><br>
    </label>
    <label>
        Unit: <form:select path="unit" itemLabel="measure" itemValue="id" items="${units}"/><br>
    </label>
    <input type="submit" value="add">
</form:form>

</body>
</html>
