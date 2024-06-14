<%@ page import="model.UserDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>myPage</title>
    <link rel="stylesheet" href="../resources/static/css/common.css">
    <link rel="stylesheet" href="../resources/static/css/myPage.css">
</head>
<body>
<div class="all_wrap">
    <header class="header">
        <h1><a class="logo" href="../index.jsp">Movie_Cinema</a></h1>
        <p class="userChoice">
            <a href="logOut_action.jsp">로그아웃</a>
            <a href="logInUser.jsp">홈으로가기</a>
        </p>
    </header>
    <%
        UserDTO logIn = (UserDTO) session.getAttribute("logIn");
    %>

    <main>
        <div class="user_wrap">
                <ul>
                    <li class="user_content">
                        <h1>
                            <img src="../resources/jpg/puriosa.jpg" class="card-img-top" alt="퓨리오사" style="width: 200px;">
                        </h1>
                        <p>닉네임: <%=logIn.getNickName()%></p>
                        <p>아이디: <%=logIn.getUserId()%></p>
                        <a href="#">비밀번호 변경</a>
                        <p>새싹등급: 등급 <%=logIn.getUserRank()%> 입니다 😆</p>
                    </li>
                    <li class="wallet">
                        <h3>마이월렛 • 예매정보</h3>
                        <a href="#">예매정보</a>
                        <a href="#">예매취소</a>
                        <a href="#">빠른결제</a>
                        <a href="#">간편카드 등록하기</a>
                    </li>
                    <li class="event">
                        <h3>이벤트 • 혜택</h3>
                        <a href="#">제휴카드 보기</a>
                        <a href="#">이벤트 찾아보기</a>
                        <a href="#">이벤트 참여현황</a>
                    </li>

                </ul>
        </div>
    </main>


    <footer class="footer">
        <p>copyrightⒸ20240610</p>
        <p>address: bitcampGangnam</p>
    </footer>
</div>
</body>
</html>
