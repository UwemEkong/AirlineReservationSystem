<%--
  Created by IntelliJ IDEA.
  User: Gur
  Date: 9/20/21
  Time: 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./styles/LoginStyles.css">
    <title>Title</title>
</head>
<body>
<%@include file="header.jsp" %>
<h1 class="login-header">Login</h1>

<form class="login-form" action="${pageContext.request.contextPath}/login" method="post">

    <label for="userName">Username:</label>
    <input type="text" id="userName" name="userName"><br><br>

    <label for="password">Password:</label>
    <input type="text" id="password" name="password"><br><br>

    <button type="submit">Submit</button>
</form>
</body>
</html>
