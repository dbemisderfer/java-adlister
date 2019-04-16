<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="partials/bootstrap_head.jsp" %>
    <title><%= "some title" %></title>
</head>
<body>
    <%@ include file="partials/navbar.jsp" %><br>
    <c:if test="true">
        <h1>Variable names should be very descriptive</h1>
    </c:if>
    <c:if test="false">
        <h1>single letter variable names are good</h1>
    </c:if>
    <%@ include file="partials/bootstrap_body.jsp" %>
</body>
</html>
