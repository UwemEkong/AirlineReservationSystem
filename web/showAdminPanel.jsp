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

                        <td><input type="text" name="userName" value="${user.userName}"/></td>
                        <td><input type="text" name="password" value="${user.password}"/></td>
                        <td><input type="text" name="paymentInfo" value="${user.paymentInfo}"/></td>
                        <td><input type="text" name="firstName" value="${user.firstName}"/></td>
                        <td><input type="text" name="lastName" value="${user.lastName}"/></td>
                        <td><input type="text" name="email" value="${user.email}"/></td>

                        <td>
                            <button type="submit" class="update-btn">Update (Admin Only)</button>
                        </td>
                    </form>
                </tr>
            </c:forEach>
        </table>
        <p1>
            Admin - Flight Information
        </p1>
        <br><br><br><br>
        <table class="table" id="admin-panel-table">
            <th>Flight ID</th>
            <th>Departure City</th>
            <th>Arrival City</th>
            <th>Departure Time</th>
            <th>Arrival Time</th>
            <th>Available Seats</th>
            <th>Price</th>
            <th>Flight Capacity</th>
            <c:forEach items="${flights}" var="flight">
                <tr>
                    <td>${flight.flightID}</td>
                    <form action="${pageContext.request.contextPath}/updateFlightInfo" method="post">

                        <input type="hidden" name="flightId" value="${flight.flightID}"/>

                        <td><input type="text" name="departureCity" value="${flight.departureCity}"/></td>
                        <td><input type="text" name="arrivalCity" value="${flight.arrivalCity}"/></td>
                        <td><input type="text" name="departureTime" value="${flight.departureTime}"/></td>
                        <td><input type="text" name="arrivalTime" value="${flight.arrivalTime}"/></td>
                        <td><input type="text" name="availableSeats" value="${flight.availableSeats}"/></td>
                        <td><input type="text" name="price" value="${flight.price}"/></td>
                        <td><input type="text" name="flightCapacity" value="${flight.flightCapacity}"/></td>
                        <td>
                            <button type="submit" class="update-btn">Update</button>
                        </td>
                    </form>

                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>
</body>
</html>
