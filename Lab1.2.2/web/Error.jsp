<%--
  Created by IntelliJ IDEA.
  User: ulana
  Date: 16.02.2020
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ошибка</title>
</head>
<body>
<% String message = pageContext.getException().getMessage();
   String exception = pageContext.getException().getClass().toString();
   %>
<h2>Exception</h2>
Type: <%= exception%>
Message: <%= message%>
</body>
</html>