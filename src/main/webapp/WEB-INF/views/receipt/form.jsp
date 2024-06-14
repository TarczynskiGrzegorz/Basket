<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../header.jsp" %>
<section class="dashboard-section">
    <div class="container pt-4 pb-4">
        <div class="border-dashed view-height">
            <div class="container w-25">
                <form method="post" class="padding-small text-center">
                    <div class="mb-3">
                    <label for="dish" class="form-label">Choose a Dish:</label>
                    <select name="dishId" id="dish" class="form-select">
                        <c:forEach items="${dishesList}" var="d">
                            <option value="${d.id}">${d.name}</option>
                        </c:forEach>
                    </select>
                    </div>
                    <input type="submit" value="Submit" class="btn btn-primary">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
                <div class="row justify-content-center pt-4">
                    <a href="/dashboard" class="btn btn-secondary">
                        Save receipt
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>







<%@ include file="../footer.jsp" %>