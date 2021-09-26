<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
</head>
<body>
<%@include file="header.jsp" %>

<h1>Add Flights</h1>

<form action="${pageContext.request.contextPath}/addFlight" method="post">

    <label for="departureCity">Departure City:</label>
    <input type="text" id="departureCity" name="departureCity"><br><br>

    <label for="arrivalCity">Arrival City:</label>
    <input type="text" id="arrivalCity" name="arrivalCity"><br><br>

    <label for="departureTime">Departure Time:</label>
    <input type="text" id="departureTime" name="departureTime"><br><br>

    <label for="arrivalTime">Arrival time:</label>
    <input type="text" id="arrivalTime" name="arrivalTime"><br><br>

    <label for="numPassengers">Number of Passengers:</label>
    <input type="text" id="numPassengers" name="numPassengers"><br><br>

    <button type="submit">Add</button>
</form>
</body>
</html>
