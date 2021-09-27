<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./styles/BookFlightsStyles.css">
</head>
<body>
<%@include file="header.jsp" %>

<p1>
    Trip Management
</p1>
<br><br><br><br>
<p2>
    What would you like to do?
</p2>

<br><br><br><br>
<form action="${pageContext.request.contextPath}/showMyBookedTrips" method="get">
    <input type="hidden" name="userID" value="${user.userID}" />
    <td><button type="submit" class="book-flight-btn" >Show My Booked Flights</button></td>
</form>

<br><br><br><br>
<form action="${pageContext.request.contextPath}/showAvailableFlights" method="get">
    <td><button type="submit" class="book-flight-btn" >Show Available Flights</button></td>

</form>
</form>
</body>
</html>
