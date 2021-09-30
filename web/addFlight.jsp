<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./styles/BookFlightsStyles.css">
</head>
<body>
<%@include file="header.jsp" %>

<p1>Admin Privilege: Add Flight</p1>
<br><br><br><br>
<form action="${pageContext.request.contextPath}/addFlight" method="post">

    <label for="departureCity">Departure City: (EX: Chicago, ORD) </label>
    <input type="text" id="departureCity" name="departureCity"><br><br><br>

    <label for="arrivalCity">Arrival City: (EX: San Francisco, SFO)</label>
    <input type="text" id="arrivalCity" name="arrivalCity"><br><br><br>

    <label for="departureTime">Departure Time: (EX: 11/10/2021 - 2:00PM)</label>
    <input type="text" id="departureTime" name="departureTime"><br><br><br>

    <label for="arrivalTime">Arrival time: (EX: 11/10/2021 - 7:00PM)</label>
    <input type="text" id="arrivalTime" name="arrivalTime"><br><br><br>

    <button type="submit" class="book-flight-btn">Add Flight</button>
</form>
</body>
</html>
