<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logOut_action</title>
</head>
<body>
<%
  session.removeAttribute("logIn");
  response.sendRedirect("/index.jsp");
%>
</body>
</html>
