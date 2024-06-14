
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logIn_admin_page</title>
    <link rel="stylesheet" href="../resources/static/css/common.css">
    <link rel="stylesheet" href="../resources/static/css/admin.css">
</head>
<body>
<div class="all_wrap">
    <header class="header">
        <h1><a class="logo" href="#">Movie_Cinema</a></h1>

        <p class="userChoice">
            <a href="../user/logIn.jsp">로그인</a>
            <a href="../user/register.jsp">회원가입</a>
        </p>
    </header>
    <section>
       <div class="main_wrap">
           <ul>
               <li><a href="../user/showList.jsp">회원관리</a></li>
               <li><a href="../movie/movieAdmin.jsp">영화관리</a></li>
               <li><a href="#">극장관리</a></li>
               <li><a href="#">평점관리</a></li>
           </ul>
       </div>
    </section>
    <footer class="footer">
        <p>copyrightⒸ20240610</p>
        <p>address: bitcampGangnam</p>
    </footer>
</div>
</body>
</html>
