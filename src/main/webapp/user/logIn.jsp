
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logIn_index</title>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/logIn.css">
</head>
<body>
<div class="wrap">
    <header class="header">
        <h1>Movie_Picture</h1>
    </header>
    <section>
        <div class="logIn_wrap">
            아이디: <input type="text" name="id" placeholder="아이디를 입력해주세요"><br/>
            비밀번호: <input type="password" name="password" placeholder="비밀번호를 입력해주세요"><br/>
            <div>
                <input type="submit" name="로그인" value="로그인">
                <a href="/user/register.jsp">회원가입</a>
            </div>
        </div>
    </section>
</div>


</body>
</html>
