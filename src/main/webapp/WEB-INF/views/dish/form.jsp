<%--
  Created by IntelliJ IDEA.
  User: gtarczynski
  Date: 09.06.2024
  Time: 23:49
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
                <form:form modelAttribute="dish" method="post" class="padding-small text-center">
                    <div class="mb-3">
                        <label class="form-label">
                            Name: <form:input class="form-control" path="name" value="${dish.name}"/>
                        </label>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">
                            Description: <form:input class="form-control" path="description"
                                                     value="${dish.description}"/>
                        </label>
                    </div>
                    <input type="submit" value="add" class="btn btn-primary">
                </form:form>

            </div>
        </div>
    </div>
</section>


<%@ include file="../footer.jsp" %>