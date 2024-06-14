<%@ page import="connecter.MysqlConnector" %>
<%@ page import="controller.UserController" %>
<%@ page import="model.UserDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>showList_action</title>

</head>
<body>
<%
    int id = Integer.parseInt(request.getParameter("userId"));
%>
<form action="replaceUserRank_action.jsp?id=<%=id%>" method="post">
    <input type="number" min="1" max="3" placeholder="1이상 3 이하의 숫자를 골라주세요" name="userRank">
    <input type="submit" value="등급수정">
</form>

</body>
</html>
