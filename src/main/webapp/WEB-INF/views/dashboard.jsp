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


<form action="<c:url value="/logout"/>" method="post">
    <input class="fa fa-id-badge" type="submit" value="Sign out">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
<a href="/product/get">
    Show Products
</a>
<a href="/product/add">
    Add Products
</a>
<a href="/dish/add">
    Add Dish
</a>

<c:if test="${empty receipt}">
    no order
    <a href="/receipt/create">
        Create order
    </a>
</c:if>
<c:forEach items="${receipt.dishes}" var="d">
    ${d.name}<br>
    <c:forEach items="${d.ingredients}" var="i">
        <c:out value="${i.product.name}"/> <c:out value="${i.amount}"/> <c:out value="${i.product.unit.measure}"/><br>
    </c:forEach>
</c:forEach>


<table>
    <thead>
        <tr>
            <th>Product</th>
            <th>Amount</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="entry" items="${list}">
            <tr>
                <td><c:out value="${entry.key}"/></td>
                <td><c:out value="${entry.value}"/></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<a href="/receipt/addDish">
    Add dish to order
</a>
</body>
</html>
