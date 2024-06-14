<%@ page import="model.MovieDTO" %>
<%@ page import="connecter.MysqlConnector" %>
<%@ page import="controller.MovieController" %>
<%@ page import="model.UserDTO" %>
<%@ page import="controller.UserController" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>movieOne</title>
    <link rel="stylesheet" href="../resources/static/css/common.css">
    <link rel="stylesheet" href="../resources/static/css/movieOne.css">
</head>
<body>
<div class="all_wrap">

    <header class="header">
        <h1><a class="logo" href="../index.jsp">Movie_Cinema</a></h1>
    </header>
    <%
        MysqlConnector connector = new MysqlConnector();
        MovieController movieController = new MovieController(connector);

        UserDTO logIn = (UserDTO) session.getAttribute("logIn");
        int movieId = Integer.parseInt(request.getParameter("movieId"));
        MovieDTO movie = movieController.selectOne(movieId);

    %>

    <main>
        <div class="movieOne_wrap">
            <ul class="movieOne_content">
                <li>
                    <img src="<%=movie.getMovieImage()%>">
                </li>
                <%-- 영화 이미지 DB에 이미지 링크 넣어주는 방법 쓸것--%>
                <li>
                    제목: <h2><%=movie.getMovieTitle()%></h2><br/>
                    내용: <p><%=movie.getMovieSummery()%></p><br/>
<%--                    개봉일: <span><%=movie.getReleasDate%>></span><br/>--%>
                    <div class="movieOne_btn">
                        <a href="#">리뷰보기</a>
                        <a href="#">영화관보기</a>
                        <a href="#">상영시간보기</a>
                    </div>
                    <%
                        if (logIn != null) {
                             if(logIn.getUserRank() == 2){
                    %>
                    <form action="reviewInsert_action.jsp">
                        <input type="button" value="평가하러가기" name="update">
                    </form>
                    <%
                            } else if (logIn.getUserRank() <= 1) {
                    %>
                    <div class="logInUser_choice">
                        <a href="../index.jsp">뒤로가기</a>
                        <a href="#">예매하기</a>
                    </div>
                    <%
                            }
                        }
                    %>
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
