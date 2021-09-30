<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./styles/BookFlightsStyles.css">
</head>
<body>
<%@include file="header.jsp" %>

<p1>
    Your Search Results
</p1>
<br><br><br><br>
<p2>
    These are all the flights found according to your search.
    <br> You must be logged in to book a flight.
</p2>

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


            <form action="${pageContext.request.contextPath}/login.jsp" method="get">
                <td><button type="submit" class="book-flight-btn" >Login To Book</button></td>

            </form>

        </tr>

    </c:forEach>
</table>
</body>
</html>
