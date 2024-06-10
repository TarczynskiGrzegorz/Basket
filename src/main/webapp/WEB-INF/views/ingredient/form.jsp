<%--
  Created by IntelliJ IDEA.
  User: gtarczynski
  Date: 10.06.2024
  Time: 21:41
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
<form:form modelAttribute="ingredient" method="post">
    <label>
        Amount: <form:input path="amount" value="${ingredient.amount}"/><br>
    </label>
    <label>
        Product: <form:select path="product" itemLabel="name" itemValue="id" items="${products}"/><br>
    </label>
    <input type="submit" value="add">
</form:form>
<c:forEach items="${ingredients}" var ="i">
    <c:out value=" ${i.product.name}"/> <c:out value="- ${i.amount}"/> <c:out value=" ${i.product.unit.measure}"/>
</c:forEach>
</body>
</html>
