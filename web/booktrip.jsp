<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
</head>
<body>
<%@include file="header.jsp" %>

<div>

<form action="${pageContext.request.contextPath}/bookTrip" method="post">

    <label for="flightID">Flight Id:</label>
    <input type="text" id="flightID" name="flightID"><br><br>

    <label for="paymentInfo">Card Number:</label>
    <input type="text" id="paymentInfo" name="paymentInfo"><br><br>

    <label for="cv">CV:</label>
    <input type="text" id="cv" name="cv"><br><br>

    <label for="expiration">Expiration Date:</label>
    <input type="text" id="expiration" name="expiration"><br><br>

    <button type="submit">Submit</button>
</form>

</div>

</body>
</html>
