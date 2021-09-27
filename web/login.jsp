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
<h1 class="login-header">Welcome Back</h1>

<div class="row">
  <div class="login-form-col" id="login-form-container">
      <div class="error-login">${message}</div>
      <form class="login-form" action="${pageContext.request.contextPath}/login" method="post">
            <div class="form-data">
                <label for="userName">Username</label><br>
                <input class="login-form-input" type="text" id="userName" name="userName"><br><br>

                <label for="password">Password</label><br>
                <input class="login-form-input" type="text" id="password" name="password"><br><br>

                <button class="login-button" type="submit">Login</button>
                <a href="${pageContext.request.contextPath}/signup.jsp"><button class="signup-button" type="button">Sign Up</button></a>
            </div>
      </form>
  </div>
</div>
</body>
</html>
