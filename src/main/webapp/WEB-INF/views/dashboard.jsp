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
<%@ include file="header.jsp"%>


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
<div class="container-fluid">
    <div class="row">


        <div class="col-sm-6">
            <table class="table">
                <thead>
                <tr class="table-primary">
                    <th scope="col">Product</th>
                    <th scope="col">Amount</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${receipt.dishes}" var="d">
                    <tr class="table-secondary">
                        <td> ${d.name}</td>
                        <td></td>
                    </tr>
                    <c:forEach items="${d.ingredients}" var="i">
                        <tr>
                            <td><c:out value="${i.product.name}"/></td>
                            <td><c:out value="${i.amount}"/> <c:out value="${i.product.unit.measure}"/></td>
                        </tr>
                    </c:forEach>
                </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="col-sm-6">
            <table class="table">
                <thead>
                <tr class="table-info">
                    <th scope="col">Product</th>
                    <th scope="col">Amount</th>
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
        </div>
    </div>
</div>

<a href="/receipt/addDish">
    Add dish to order
</a>
<%@ include file="footer.jsp"%>