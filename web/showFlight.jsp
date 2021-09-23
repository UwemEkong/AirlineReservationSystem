<%@ page import="models.Flight" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
</head>
<body>
<%@include file="header.jsp" %>

<%
    Flight f = (Flight) request.getAttribute("flight");
    out.println(f);
%>
</body>
</html>
