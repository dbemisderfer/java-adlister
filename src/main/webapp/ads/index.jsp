<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Ads Listing</title>
</head>
<body>
    <h1>Here are all the ads:</h1>
    <table>
        <thead>
            <th>Title</th>
            <th>Description</th>
        </thead>

        <c:forEach var="ad" items="${ads}">
        <tr>
            <td>${ad.title}</td>
            <td>${ad.description}</td>
        </tr>
        </c:forEach>
    </table>

    <%--<c:forEach var="ad" items="${ads}" >--%>
        <%--<div class="ad">--%>
            <%--<h2>${ad.title}</h2>--%>
            <%--<p>${ad.description}</p>--%>
        <%--</div>--%>
    <%--</c:forEach>--%>

</body>
</html>
