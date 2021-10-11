<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./styles/AdminPanelStyles.css">
</head>
<body>
<%@include file="header.jsp" %>
<div class="container-fluid">
   <h1 class="h1-admin-panel">Admin Panel<img src="images/gearicon.png"></h1>
    <div class="edit-container">
        <span id="edit-user-option" onclick="showUsersTable()">Edit Users</span>
        <span id="edit-flight-option" onclick="showFlightsTable()">Edit Flights</span>
    </div>

    <c:set var="AdminUser" value="ADMIN"/>
    <c:if test="${sessionScope.user.userType == AdminUser}">
        <table class="table admin-table-users">
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

        <table class="table admin-table-flights" id="admin-panel-table">

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
                        <td><input class="resize-table-input"  type="text" name="availableSeats" value="${flight.availableSeats}"/></td>
                        <td><input class="resize-table-input" type="text" name="price" value="${flight.price}"/></td>
                        <td><input class="resize-table-input" type="text" name="flightCapacity" value="${flight.flightCapacity}"/></td>
                        <td>
                            <button type="submit" class="update-btn">Update</button>
                        </td>
                    </form>

                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>
<script src="scripts/AdminPanelScript.js"></script>
</body>
</html>
