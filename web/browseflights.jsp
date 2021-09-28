<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./styles/BookFlightsStyles.css">
</head>
<body>
<%@include file="header.jsp" %>

<p1>
    Browse All Available Flights
</p1>
<br><br><br><br>

<form action="${pageContext.request.contextPath}/searchAvailableFlights" method="get">

    <label for="departureCity">Departure City: (EX: Chicago, ORD) </label>
    <input type="text" id="departureCity" name="departureCity"><br><br><br>

    <label for="arrivalCity">Arrival City: (EX: San Francisco, SFO)</label>
    <input type="text" id="arrivalCity" name="arrivalCity"><br><br><br>

    <label for="departureTime">Departure Time: (EX: 11/10/2021 - 2:00PM)</label>
    <input type="text" id="departureTime" name="departureTime"><br><br><br>

    <label for="arrivalTime">Arrival time: (EX: 11/10/2021 - 7:00PM)</label>
    <input type="text" id="arrivalTime" name="arrivalTime"><br><br><br>

    <input type="hidden" name="userID" value="${user.userID}" />
    <td><button type="submit" class="book-flight-btn" >Browse Flights</button></td>


</form>

<br>
<br>
<br>


<pre>

    Leave All Fields Blank To View All Available Flights

    Available Cities For Travel:                    Available Dates:

    Atlanta, ATL                                    11/01/2021
    Dallas, DFW                                     11/04/2021
    Denver, DEN                                     11/07/2021
    Chicago, ORD                                    11/10/2021
    Los Angeles, LAX                                11/13/2021
    Las Vegas, LAS                                  11/16/2021
    Phoenix, PHX                                    11/19/2021
    Orlando, MCO                                    11/22/2021
    Seattle, SEA                                    11/25/2021
    Miami, MIA                                      11/28/2021
    San Francisco, SFO


    Available Departure Times:
    2:00 PM

    Available Arrival Times:
    7:00 PM


</pre>

</body>
</html>
