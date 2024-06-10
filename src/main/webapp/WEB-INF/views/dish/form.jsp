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
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
    <form:form modelAttribute="dish" method="post">
      <label>
        Name: <form:input path="name" value="${dish.name}"/><br>
      </label>
      <label>
        Description: <form:input path="description" value="${dish.description}"/><br>
      </label>
      <input type="submit" value="add">
    </form:form>
  </body>
</html>
