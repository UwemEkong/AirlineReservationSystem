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

            <form action="${pageContext.request.contextPath}/updateMemberInfo" method="post">

                <input type="hidden" name="userId" value="${member.userID}" />

                <td><input type="text" name="userName" value="${member.userName}" /></td>
                <td><input type="text" name="password" value="${member.password}" /></td>
                <td><input type="text" name="paymentInfo" value="${member.paymentInfo}" /></td>
                <td><input type="text" name="firstName" value="${member.firstName}" /></td>
                <td><input type="text" name="lastName" value="${member.lastName}" /></td>
                <td><input type="text" name="email" value="${member.email}" /></td>

                <td><button type="submit" class="book-flight-btn">Update (Admin Only)</button></td>
            </form>
        </tr>
    </c:forEach>
</table>
</body>
</html>
