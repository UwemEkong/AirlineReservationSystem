<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1"/>
    <link rel="stylesheet" href="styles/WelcomePageStyles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@600;700&display=swap" rel="stylesheet">
</head>
<body>
<%@include file="header.jsp" %>
<div class="row welcome-row">
    <div class="content-col">
        <h1 class="welcome-header"><span class="welcome-span">Welcome To </span><span class="airlines-span">BenU Airlines</span><img
                class="welcome-img-header" src="images/welcomeIcon.png"></h1>
        <p class="welcome-paragraph">We ensure that all of your travel needs are taken care of by simplifying the flight
            booking process.</p>

        <c:if test="${sessionScope.user.userType == AdminUser}">
            <a class="get-started-link" href="${pageContext.request.contextPath}/showAdminInfo">
                <button class="get-started-btn" type="button"><img class="welcome-img-btn" src="images/welcomeIcon.png">Get
                    Started
                </button>
            </a>
        </c:if>

        <c:if test="${sessionScope.user.userType != AdminUser}">
            <a class="get-started-link" href="${pageContext.request.contextPath}/browseFlights.jsp">
                <button class="get-started-btn" type="button"><img class="welcome-img-btn" src="images/welcomeIcon.png">Get
                    Started
                </button>
            </a>
        </c:if>

    </div>
    <div class="image-col">
        <img class="image-large" src="images/flightImage.jpg">
    </div>
</div>
</body>
</html>
