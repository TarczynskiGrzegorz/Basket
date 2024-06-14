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
<%@ include file="../header.jsp" %>


<section class="dashboard-section">
    <div class="container pt-4 pb-4">
        <div class="border-dashed view-height">
            <div class="container w-25">

                <form:form modelAttribute="ingredient" method="post" class="padding-small text-center">
                    <div class="mb-3">
                        <label class="form-label">
                            Amount: <form:input class="form-control" path="amount" value="${ingredient.amount}"/><br>
                        </label>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">
                            Product: <form:select class="form-select" path="product" itemLabel="name" itemValue="id"
                                                  items="${products}"/><br>
                        </label>
                    </div>
                    <input type="submit" value="add" class="btn btn-primary">
                </form:form>
                <c:forEach items="${ingredients}" var="i">
                    <c:out value=" ${i.product.name}"/> <c:out value="- ${i.amount}"/> <c:out
                        value=" ${i.product.unit.measure}"/>
                </c:forEach><br>
                <div class="row justify-content-center">
                <a href="/dashboard" class="btn btn-success">
                    Save dish
                </a>
                </div>
            </div>
        </div>
    </div>
</section>



<%@ include file="../footer.jsp" %>