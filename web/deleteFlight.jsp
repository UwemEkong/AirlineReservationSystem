<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./styles/BookFlightsStyles.css">
</head>
<body>
<%@include file="header.jsp" %>

<p1>Admin Privilege: Delete Flight</p1>
<br><br><br><br>

<br><br><br><br>
<table class="table">
    <th>Flight ID</th>
    <th>Departure City</th>
    <th>Departure Time</th>
    <th>Arrival City</th>
    <th>Arrival Time</th>
    <th>Available Seats</th>
    <th>Price</th>
    <c:forEach items = "${flights}" var="flight">
        <tr>
            <td>${flight.flightID}</td>
            <td>${flight.departureCity}</td>
            <td>${flight.departureTime}</td>
            <td>${flight.arrivalCity}</td>
            <td>${flight.arrivalTime}</td>
            <td>${flight.availableSeats}</td>
            <td>${flight.price}</td>


            <!-- if is admin -->
            <form action="${pageContext.request.contextPath}/deleteFlight" method="post">
                <input type="hidden" name="flightID1" value="${flight.flightID}" />
                <td><button class="book-flight-btn">Delete Flight (Only Admin!)</button></td>
            </form>

            <!-- if is admin -->
            <form action="${pageContext.request.contextPath}/deleteFlight" method="post">
                <input type="hidden" name="flightID1" value="${flight.flightID}" />
                <td><button class="book-flight-btn">Delete Flight (Only Admin!)</button></td>
            </form>

        </tr>

    </c:forEach>
</table>
</body>
</html>
