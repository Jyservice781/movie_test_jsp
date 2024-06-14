<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>showError</title>
    <link rel="stylesheet" href="../css/common.css">

</head>
<body>
<div class="all_wrap">
    <header class="header">
        <h1><a class="logo" href="#">Movie_Picture</a></h1>

        <p class="userChoice">
            <a href="../user/logIn.jsp">로그인</a>
            <a href="../user/register.jsp">회원가입</a>
        </p>
    </header>


    <%
        String errorCode = request.getParameter("code");
        String message = "";

        if (errorCode.equalsIgnoreCase("duplicated")) {
            message = "중복된 아이디로는 가입하실 수 없습니다.";
        }
    %>
    <h1>
        <%=message%>
    </h1>
    <a href="../index.jsp">인덱스로 돌아가기</a>

    <footer class="footer">
        <p>copyrightⒸ20240610</p>
        <p>address: bitcampGangnam</p>
    </footer>

</div>
</body>
</html>
