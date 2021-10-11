<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./styles/AdminPanelStyles.css">
</head>
<body>
<%@include file="header.jsp" %>
<div class="container-fluid">
    <p1>
        Admin - User Information
    </p1>
    <br><br><br><br>

    <c:set var="AdminUser" value="ADMIN"/>
    <c:if test="${sessionScope.user.userType == AdminUser}">
    <table class="table">
        <th>User ID</th>
        <th>Username</th>
        <th>Password</th>
        <th>Payment Info</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>

        <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.userID}</td>

            <form action="${pageContext.request.contextPath}/updateMemberInfo" method="post">

                <input type="hidden" name="userId" value="${user.userID}"/>

                <td><input type="text" name="userName" value="${user.userName}" readonly/></td>
                <td><input type="text" name="password" value="${user.password}" readonly/></td>
                <td><input type="text" name="paymentInfo" value="${user.paymentInfo}" readonly/></td>
                <td><input type="text" name="firstName" value="${user.firstName}" readonly/></td>
                <td><input type="text" name="lastName" value="${user.lastName}" readonly/></td>
                <td><input type="text" name="email" value="${user.email}" readonly/></td>

            </form>
        </tr>
        </c:forEach>
    </table>
    </c:if>

    <p1>
        Enter Flight ID  & User ID For Booking Request
    </p1>
    <br><br><br><br>

    <form action="${pageContext.request.contextPath}/bookFlightForUser" method="post">

            <%--@declare id="idflight"--%>
            <label for="idFlight">Flight ID</label>
            <td><input type="text" id="idlFlight" name="idFlight"><br><br><br></td>
            <label for="user">User ID</label>
            <td><input type="text" id="user" name="user"><br><br><br></td>
                <button type="submit" class="book-flight-btn">Book Flight</button>
            </td>
    </form>

</div>
</body>
</html>