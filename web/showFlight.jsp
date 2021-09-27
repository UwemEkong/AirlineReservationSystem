<%@ page import="java.util.List" %>
<%@ page import="models.Flight" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./styles/BookFlightsStyles.css">
</head>
<body>
<%@include file="header.jsp" %>

<h1 class="flight-list-h1">Book Flights<img class="book-flight-h1-img" src="./images/flightIcon.png"/></h1>
<table class="table">
    <th>Depart</th>
    <th>Arrive</th>
    <th>Available Seats</th>
    <th>Flight Capacity</th>
    <th>Price</th>
    <c:forEach items = "${flights}" var="flight">
        <tr>
            <td>${flight.departureCity}</td>
            <td>${flight.arrivalCity}</td>
            <td>${flight.availableSeats}</td>
            <td>${flight.flightCapacity}</td>
            <td>${flight.price}</td>
            <c:if test="${empty sessionScope.user}" >
                <td><button class="book-flight-btn">Login To Book</button></td>
            </c:if>
            <c:if test="${not empty sessionScope.user}" >
                <td><button class="book-flight-btn">Book Flight</button></td>
            </c:if>
        </tr>

    </c:forEach>
</table>

</body>
</html>
