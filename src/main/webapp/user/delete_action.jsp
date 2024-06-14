<%@ page import="model.UserDTO" %>
<%@ page import="connecter.MysqlConnector" %>
<%@ page import="controller.UserController" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delete_action</title>
</head>
<body>
<%
    int id = Integer.parseInt(request.getParameter("id"));

    MysqlConnector connector = new MysqlConnector();
    UserController userController = new UserController(connector);
    userController.delete(id);

    response.sendRedirect("showList.jsp");
%>
</body>
</html>
