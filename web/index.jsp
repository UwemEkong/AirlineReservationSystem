<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
  </head>
  <body>
  <%@include file="header.jsp" %>

  <form action="${pageContext.request.contextPath}/flight" method="get">
    <label for="dest">Destination:</label>
    <input type="text" id="dest" name="dest"><br><br>
    <button type="submit">Submit</button>
  </form>
  </body>
</html>
