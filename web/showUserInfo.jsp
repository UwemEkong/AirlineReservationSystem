<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./styles/BookFlightsStyles.css">
</head>
<body>
<%@include file="header.jsp" %>

<p1>
    Admin - User Information
</p1>
<br><br><br><br>

<table class="table">
    <th>User ID</th>
    <th>Username</th>
    <th>Password</th>
    <th>Payment Info</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Email</th>

    <c:forEach items = "${members}" var="member">
        <tr>
            <td>${member.userID}</td>
            <td>${member.userName}</td>
            <td>${member.password}</td>
            <td>${member.paymentInfo}</td>
            <td>${member.firstName}</td>
            <td>${member.lastName}</td>
            <td>${member.email}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
