<%--
  Created by IntelliJ IDEA.
  User: Gur
  Date: 9/20/21
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="models.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <title>BenU Airlines</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./styles/BookFlightsStyles.css">
</head>
<body>

<c:if test="${empty sessionScope.user.userType}" >
    <div class="jumbotron">
        <div class="container">
            <h1><span class="p-3 mb-2 bg-white text-dark">BenU </span><span class="text-danger">Airlines</span></h1>
        </div>

        <nav class="navbar">
            <div class="container">
                <ul class="nav navbar-nav navbar-right">
                    <a href="browseFlights.jsp" class="btn bg-white text-danger border-danger navbar-btn">Browse Flights</a>
                    <a href="aboutUs.jsp" class="btn bg-white text-danger border-danger navbar-btn">About US</a>
                    <a href="${pageContext.request.contextPath}/login.jsp" class="login-signup-btn navbar-btn"><span class="glyphicon glyphicon-log-in"></span> Login</a>
                    <a href="${pageContext.request.contextPath}/signUp.jsp" class="login-signup-btn navbar-btn"><span class="glyphicon glyphicon-user"></span> Sign Up</a>

                </ul>
            </div>
        </nav>
    </div>
</c:if>

<c:set var="AdminUser" value="ADMIN"/>
<c:set var="MemberUser" value="MEMBER"/>

<c:if test="${sessionScope.user.userType == MemberUser}" >
    <div class="jumbotron">
        <div class="container">
            <h1><span class="p-3 mb-2 bg-white text-dark">BenU </span><span class="text-danger">Airlines</span></h1>
        </div>

        <nav class="navbar">
            <div class="container">
                <ul class="nav navbar-nav navbar-right">
                    Welcome Back <b>${user.fullName}</b>

                    <form action="${pageContext.request.contextPath}/showMyBookedFlights" method="get" style="display: inline" >
                        <input type="hidden" name="userID" value="${user.userID}" />
                        <td><button type="submit" class="btn bg-white text-danger border-danger navbar-btn" >My Booked Flights</button></td>
                    </form>
                    <a href="browseFlights.jsp" class="btn bg-white text-danger border-danger navbar-btn">Browse Flights</a>

                    <a href="aboutUs.jsp" class="btn bg-white text-danger border-danger navbar-btn">About US</a>
                    <a href="${pageContext.request.contextPath}/logout" class="navbar-btn login-signup-btn"><span class="glyphicon glyphicon-log-in"></span> Logout</a>
                </ul>
            </div>
        </nav>
    </div>
</c:if>

<c:if test="${sessionScope.user.userType == AdminUser}" >
    <div class="jumbotron">
        <div class="container">
            <h1><span class="p-3 mb-2 bg-white text-dark">BenU </span><span class="text-danger">Airlines</span></h1>
        </div>

        <nav class="navbar">
            <div class="container">
                <ul class="nav navbar-nav navbar-right">
                    Welcome Back <b>${user.fullName}</b>

                    <form action="${pageContext.request.contextPath}/deleteFlight" method="get" style="display: inline" >
                        <td><button type="submit" class="btn bg-white text-danger border-danger navbar-btn" >Delete Flight</button></td>
                    </form>

                    <a href="addFlight.jsp" class="btn bg-white text-danger border-danger navbar-btn">Add Flight</a>

                    <a href="${pageContext.request.contextPath}/showAdminInfo" class="btn bg-white text-danger border-danger navbar-btn">Admin Panel</a>
                    <a href="${pageContext.request.contextPath}/bookForUser" class="btn bg-white text-danger border-danger navbar-btn">Book For User</a>
                    
                    <a href="aboutUs.jsp" class="btn bg-white text-danger border-danger navbar-btn">About US</a>
                    <a href="${pageContext.request.contextPath}/logout" class="navbar-btn login-signup-btn"><span class="glyphicon glyphicon-log-in"></span> Logout</a>
                </ul>
            </div>
        </nav>
    </div>
</c:if>
</body>
</html>