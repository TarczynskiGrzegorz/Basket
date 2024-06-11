<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post">
    <label for="dish">Choose a Dish:</label>
    <select name="dishId" id="dish">
        <c:forEach items="${dishesList}" var="d">
            <option value="${d.id}">${d.name}</option>
        </c:forEach>
    </select>
    <input type="submit" value="Submit">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
<%--<form:form modelAttribute="receipt" method="post">--%>
<%--    <label>--%>
<%--        Dish: <form:select path="dishes" itemLabel="name" itemValue="id" items="${dishesList}"/><br>--%>
<%--    </label>--%>
<%--    <input type="submit" value="add to receipt">--%>
<%--</form:form>--%>
<a href="/dashboard">
    Save receipt
</a>

</body>
</html>
