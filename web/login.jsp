<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1"/>
    <link rel="stylesheet" href="./styles/LoginStyles.css">
    <link rel="stylesheet" href="./styles/HeaderStyles.css.css">
    <title>Title</title>
</head>
<body>
<%@include file="header.jsp" %>
<h1 class="login-header">Welcome Back!<img class="welcome-img" src="images/handwave.png"></h1>

<div class="row" id="login-form-row">
    <div class="login-form-col" id="login-form-container">
        <div class="error-login">${message}</div>
        <form class="login-form" action="${pageContext.request.contextPath}/login" method="post">
            <div class="form-data">
                <label class="custom-label" for="userName">Username</label><br>
                <input class="login-form-input" type="text" id="userName" name="userName"><br><br>

                <label class="custom-label" for="password">Password</label><br>
                <input class="login-form-input" type="password" id="password" name="password"><br><br>

                <button class="login-button" type="submit">Login</button>
                <a href="${pageContext.request.contextPath}/signUp.jsp">
                    <button class="signup-button" type="button">Sign Up</button>
                </a>
            </div>
        </form>
    </div>
</div>
</body>
</html>
