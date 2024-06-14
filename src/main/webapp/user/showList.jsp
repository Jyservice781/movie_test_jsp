<%@ page import="model.UserDTO" %>
<%@ page import="connecter.MysqlConnector" %>
<%@ page import="controller.UserController" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>showList_admin</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

    <script type="text/javascript">
        function showAlert(id) {
            let result = confirm("정말 삭제하시겠습니까?");
            if(result){
                window.location.href = "../user/delete_action.jsp?id=" + id;
            }
        }
    </script>

</head>
<body>
<%
    UserDTO logIn = (UserDTO) session.getAttribute("logIn");
    MysqlConnector connector = new MysqlConnector();
    UserController controller = new UserController(connector);
    ArrayList<UserDTO> list = controller.selectAll();
%>

<form action="replaceUserRank.jsp" method="post" class="accordion accordion-flush" id="accordionFlushExample">
    <div class="accordion-item">
        <%
            for(UserDTO user : list) {
        %>
        <h2 class="accordion-header">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse<%=user.getId()%>" aria-expanded="false" aria-controls="flush-collapse<%=user.getId()%>">
                <input type="checkbox" id="checkBox" name="userId" value=<%=user.getId()%>>
                <label for="checkBox"></label>
                회원명 | <%=user.getNickName()%>
            </button>
        </h2>
        <div id="flush-collapse<%=user.getId()%>" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
            <div class="accordion-body">
                <ul class="userContent">
                    <li>아이디: <%=user.getUserId()%></li>
                    <li>비밀번호: <%=user.getPassword()%></li>
                    <li>닉네임: <%=user.getNickName()%></li>
                    <li>회원등급: <%=user.getUserRank()%></li>
                </ul>
                <a href="javascript:void(0);" onclick="showAlert(<%=user.getId()%>);">회원탈퇴</a>
            </div>
        </div>
        <%
            }
        %>
    </div>
    <input type="submit" value="회원정보수정">
    <a href="logOut_action.jsp">뒤로가기</a>
</form>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
