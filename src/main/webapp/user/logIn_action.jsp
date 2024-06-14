<%@ page import="model.UserDTO" %>
<%@ page import="connecter.MysqlConnector" %>
<%@ page import="controller.UserController" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logIn_action</title>
</head>
<body>
<%
    String userId = request.getParameter("id");
    String password = request.getParameter("password");

    UserDTO userDTO = new UserDTO();
    userDTO.setUserId(userId);
    userDTO.setPassword(password);

    MysqlConnector connector = new MysqlConnector();
    UserController userController = new UserController(connector);

    userController.logIn(userDTO);
    UserDTO logIn = userController.logIn(userDTO);

    if (logIn != null) {
        session.setAttribute("logIn", logIn);
        // 저장
        // 로그인이 되어있을때, 관리자인지 확인하기
        if (logIn.getUserRank() == 3) {
            //관리자 메뉴 보이기
            response.sendRedirect("logInAdmin.jsp");
        } else if (logIn.getUserRank() <= 2) {
            //일반 회원 메인 보여주기
            response.sendRedirect("logInUser.jsp");
        }
    } else {
        //해당 인덱스로 감.
        response.sendRedirect("/");
    }
%>

</body>
</html>
