<%--
  Created by IntelliJ IDEA.
  User: dwightbemisderfer
  Date: 2019-04-16
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%! String username = request.getParameter("username"); %>--%>
<%--<%! String password = request.getParameter("password"); %>--%>
<html>
<head>
    <%@ include file="partials/bootstrap_head.jsp" %>
    <title>Login Page</title>
</head>
<body>
    <%@ include file="partials/navbar.jsp" %><br>
    <form action="login.jsp" method="post">
        Email:<input type="text" name="username"/><br/><br/>
        Password:<input type="password" name="password"/><br/><br/>
        <input type="submit" value="login"/>
    </form>
    <%--<%--%>

        <%--String username = request.getParameter("username");--%>
        <%--String password = request.getParameter("password");--%>
        <%--if (username != null && password != null) {--%>
            <%--if (username.equals("admin") && password.equals("password")) {--%>
                <%--response.sendRedirect("/profile.jsp");--%>
            <%--}--%>
<%--//            else--%>
<%--//            {--%>
<%--//                response.sendRedirect("/login.jsp");--%>
<%--//            }--%>
    <%--}--%>

    <%--%>--%>

    <c:choose>
        <c:when test="${param.username.equals('admin') && param.password.equals('password')}">
            <% response.sendRedirect("/profile.jsp"); %>
        </c:when>
    </c:choose>








    <%--<c:choose>--%>
        <%--<c:when test="${param.username.equals('admin') && param.password.equals('password')}">--%>
            <%--<% response.sendRedirect("http://localhost:8080/profile.jsp"); %>--%>
        <%--</c:when>--%>
    <%--</c:choose>--%>
    <%@ include file="partials/bootstrap_body.jsp" %>
</body>
</html>
