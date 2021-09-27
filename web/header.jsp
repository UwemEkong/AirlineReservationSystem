<%--
  Created by IntelliJ IDEA.
  User: Gur
  Date: 9/20/21
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BenU Airlines</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<<<<<<< Updated upstream
<body >
<div class="jumbotron">
    <div class="container">
        <h1><span class="p-3 mb-2 bg-white text-dark">BenU </span><span class="text-danger">Airlines</span></h1>
=======
<body>

<c:if test="${empty sessionScope.user.firstName}" >
    <div class="jumbotron">
        <div class="container">
            <h1><span class="p-3 mb-2 bg-white text-dark">BenU </span><span class="text-danger">Airlines</span></h1>
        </div>

        <nav class="navbar">
            <div class="container">
                <ul class="nav navbar-nav navbar-right">
                    <a href="addflights.jsp" class="btn bg-white text-danger border-danger navbar-btn">Add Flights</a>
                    <a href="browseflights.jsp" class="btn bg-white text-danger border-danger navbar-btn">Browse Flights</a>
                    <a href="${pageContext.request.contextPath}/login.jsp" class="btn btn-danger navbar-btn"><span class="glyphicon glyphicon-log-in"></span> Login</a>
                    <a href="${pageContext.request.contextPath}/signup.jsp" class="btn btn-danger navbar-btn"><span class="glyphicon glyphicon-user"></span> Sign Up</a>
                    <a href="aboutUs.jsp" class="btn bg-white text-danger border-danger navbar-btn">About US</a>
                </ul>
            </div>
        </nav>
>>>>>>> Stashed changes
    </div>

    <nav class="navbar">
        <div class="container">
            <ul class="nav navbar-nav navbar-right">
                <a href="addflights.jsp" class="btn bg-white text-danger border-danger navbar-btn">Add Flights</a>
                <a href="browseflights.jsp" class="btn bg-white text-danger border-danger navbar-btn">Browse Flights</a>
                <a href="/login" class="btn btn-danger navbar-btn"><span class="glyphicon glyphicon-log-in"></span> Login</a>
                <a href="/signup" class="btn btn-danger navbar-btn"><span class="glyphicon glyphicon-user"></span> Sign Up</a>
                <a href="contactus.jsp" class="btn bg-white text-danger border-danger navbar-btn">Contact US</a>
            </ul>
        </div>
<<<<<<< Updated upstream
    </nav>
</div>
=======

        <nav class="navbar">
            <div class="container">
                <ul class="nav navbar-nav navbar-right">
                    Welcome Back <b>${user.fullName}</b>
                    <a href="tmHome.jsp" class="btn bg-white text-danger border-danger navbar-btn">Trip Management</a>
                    <a href="addflights.jsp" class="btn bg-white text-danger border-danger navbar-btn">Add Flights</a>
                    <a href="myflights.jsp" class="btn bg-white text-danger border-danger navbar-btn">My Flights</a>
                    <a href="browseflights.jsp" class="btn bg-white text-danger border-danger navbar-btn">Browse Flights</a>
                    <a href="aboutUs.jsp" class="btn bg-white text-danger border-danger navbar-btn">About US</a>
                    <a href="${pageContext.request.contextPath}/logout" class="btn btn-danger navbar-btn"><span class="glyphicon glyphicon-log-in"></span> Logout</a>
                </ul>
            </div>
        </nav>
    </div>
</c:if>
>>>>>>> Stashed changes
</body>
</html>
