<%--
  Created by IntelliJ IDEA.
  User: dwightbemisderfer
  Date: 2019-04-16
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int counter = 0; %>
<% counter += 1; %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>The current count is <%= counter %>.</h1>

View the page source!
<%-- localhost:8080/scratchpad.jsp --%>
<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->

</body>
</html>

<%-- <%= request.getParameter("name") %> is the same as ${param.name} --%>