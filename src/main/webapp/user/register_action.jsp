<%@ page import="model.UserDTO" %>
<%@ page import="connecter.MysqlConnector" %>
<%@ page import="controller.UserController" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register_action</title>
</head>
<body>
<%
    String userId = request.getParameter("userId");
    String password = request.getParameter("password");
    String nickName = request.getParameter("nickName");

    UserDTO userDTO = new UserDTO();
    userDTO.setUserId(userId);
    userDTO.setPassword(password);
    userDTO.setNickName(nickName);

    MysqlConnector connector = new MysqlConnector();
    UserController userController = new UserController(connector);

    boolean result = userController.register(userDTO);

    userDTO = userController.logIn(userDTO);

    if (result) {
        if (userDTO.getUserRank() == 3) {
            response.sendRedirect("../index.jsp");
        } else if (userDTO.getUserRank() <= 2) {
            response.sendRedirect("logIn.jsp");
        } else {
            response.sendRedirect("/");
        }
    } else {
        response.sendRedirect("/error/showError.jsp?code=duplicated");
    }
%>
</body>
</html>
