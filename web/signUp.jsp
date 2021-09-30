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
    <link rel="stylesheet" href="./styles/SignupStyles.css">
    <title>Register</title>
</head>
<body>
<%@include file="header.jsp" %>
<h1 class="login-header">Registration Form</h1>

<div class="row">
    <div class="signup-form-col" id="signup-form-container">
        <div class="error-register">${message}</div>
        <form class="login-form" action="${pageContext.request.contextPath}/register" method="post">
            <div class="form-data">
                <label for="firstName">First Name</label><br>
                <input class="login-form-input" type="text" id="firstName" name="firstName"><br><br>

                <label for="lastName">Last Name</label><br>
                <input class="login-form-input" type="text" id="lastName" name="lastName"><br><br>

                <label for="userName">Username</label><br>
                <input class="login-form-input" type="text" id="userName" name="userName"><br><br>

                <label for="password">Password</label><br>
                <input class="login-form-input" type="text" id="password" name="password"><br><br>

                <label for="userName">Email</label><br>
                <input class="login-form-input" type="text" id="email" name="email"><br><br>

                <label for="password">Payment Method</label><br>
                <input class="login-form-input" type="text" id="paymentMethod" name="paymentMethod"><br><br>

                <button class="login-button" type="submit">Sign Up</button>
                <a href="${pageContext.request.contextPath}/login.jsp"><button class="signup-button" type="button">Login</button></a>
            </div>
        </form>
    </div>
</div>
</body>
</html>
