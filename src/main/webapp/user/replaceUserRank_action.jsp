<%@ page import="connecter.MysqlConnector" %>
<%@ page import="controller.UserController" %>
<%@ page import="model.UserDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>userRank_action</title>
</head>
<body>
  <%
  //id, userRank
  int id = Integer.parseInt(request.getParameter("id"));
  int userRank = Integer.parseInt(request.getParameter("userRank"));

  MysqlConnector connector = new MysqlConnector();
  UserController userController = new UserController(connector);

  userController.updateRankAdmin(id,userRank);

  response.sendRedirect("showList.jsp");
  %>
</body>
</html>
