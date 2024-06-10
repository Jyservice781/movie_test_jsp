
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index_register</title>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/logIn.css">
</head>
<body>
<div class="all_wrap">
    <header class="header">
        <h1><a class="logo" href="../index.jsp">Movie_Picture</a></h1>
    </header>
    <section>
        <form action="myPage.jsp" method="post" class="wrap">
            사용할 아이디: <input type="text" name="id" placeholder="사용할 아이디를 입력해주세요"><br/>
            사용할 비밀번호: <input type="password" name="password" placeholder="사용할 비밀번호를 입력해주세요"><br/>
            <input type="submit" name="register" value="회원가입">
        </form>
    </section>
    <footer class="footer">
        <p>copyrightⒸ20240610</p>
        <p>address: bitcampGangnam</p>
    </footer>
</div>
</body>
</html>
