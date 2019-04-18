<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/partials/navbar.jsp" />

    <div class="container">
        <%--<h1>Welcome, ${user}! Viewing your profile.</h1>--%>
        <%-- Above will work, but better to use below so you know that it's a session value --%>
            <h1>Welcome, ${sessionScope.username}! Viewing your profile.</h1>
    </div>

    <%--<button><a href="/logout">Logout</a></button>--%>

</body>
</html>
