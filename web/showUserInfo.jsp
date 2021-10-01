<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./styles/BookFlightsStyles.css">
</head>
<body>
<%@include file="header.jsp" %>
<div class="container">
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

    <c:forEach items = "${users}" var="user">
        <tr>
            <td>${user.userID}</td>

            <form action="${pageContext.request.contextPath}/updateMemberInfo" method="post">

                <input type="hidden" name="userId" value="${user.userID}" />

                <td><input type="text" name="userName" value="${user.userName}" /></td>
                <td><input type="text" name="password" value="${user.password}" /></td>
                <td><input type="text" name="paymentInfo" value="${user.paymentInfo}" /></td>
                <td><input type="text" name="firstName" value="${user.firstName}" /></td>
                <td><input type="text" name="lastName" value="${user.lastName}" /></td>
                <td><input type="text" name="email" value="${user.email}" /></td>

                <td><button type="submit" class="book-flight-btn">Update (Admin Only)</button></td>
            </form>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
