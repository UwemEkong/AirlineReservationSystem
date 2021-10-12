<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./styles/BookForUser.css">

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


                <input type="hidden" name="userId" value="${user.userID}"/>

                <td><input type="text" name="userName" value="${user.userName}" readonly/></td>
                <td><input type="password" name="password" value="${user.password}" readonly/></td>
                <td><input type="text" name="paymentInfo" value="${user.paymentInfo}" readonly/></td>
                <td><input type="text" name="firstName" value="${user.firstName}" readonly/></td>
                <td><input type="text" name="lastName" value="${user.lastName}" readonly/></td>
                <td><input type="text" name="email" value="${user.email}" readonly/></td>


        </tr>
        </c:forEach>
    </table>
    </c:if>


    <p1>
        Enter Flight ID  & User ID For Booking Request
    </p1>
    <br><br><br><br>
<%--    <div class="error-booking">${message}</div>--%>
    <div class="form-book">
    <form class="border" action="${pageContext.request.contextPath}/bookFlight" method="post">

        <%--@declare id="idflight"--%><label for="idFlight">Flight ID</label>
            <td><input type="text" id="flightID1" name="flightID1"><br><br><br></td>
            <label for="userID">User ID</label>
            <td><input type="text" id="userID" name="userID"><br><br><br></td>
                <button type="submit" class="book-flight-btn">Book Flight</button>
            </td>
    </form>
        </div>

    <div class="error-booking">
        ${message}
    </div>


</div>
</body>
</html>