<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a User Account" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"></jsp:include>
    <div class="container">
        <h1>Create a User Account</h1>
        <form action="/users/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <textarea id="email" name="email" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <textarea id="password" name="password" class="form-control" type="password"></textarea>
            </div>
            <div class="form-group">
                <label for="confirm_password">Password</label>
                <textarea id="confirm_password" name="confirm_password" class="form-control" type="password"></textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>