<%--
  Created by IntelliJ IDEA.
  User: ulana
  Date: 13.02.2020
  Time: 23:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Lab2</title>
  </head>
  <body>
  <h1> Lab2 </h1>
  <form action="TestServlet" method="post">
    <br>Parameter 1: <input type="number" name="no1" id="no1" step="0.001">
    <br>Parameter 2: <input type="number" name="no2" id="no2" step="0.001">
    <br>Parameter 3: <input type="number" name="no3" id="no3" step="0.001">
    <br>Parameter 4: <input type="number" name="no4" id="no4" step="0.001">
    <br/><input size="50" name="result" aria-readonly="readonly" type="text" value="${result}"/>
    <br><input type="submit" value="submit" name="submit" />
  </form>
  </body>
</html>