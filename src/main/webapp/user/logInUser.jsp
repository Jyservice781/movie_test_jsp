<%@ page import="connecter.MysqlConnector" %>
<%@ page import="controller.MovieController" %>
<%@ page import="controller.UserController" %>
<%@ page import="model.MovieDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logIn_User</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/static/css/common.css">
</head>
<body>

<%
    MysqlConnector connector = new MysqlConnector();
    MovieController movieController = new MovieController(connector);

    ArrayList<MovieDTO> list = movieController.selectAll();
%>
<div class="all_wrap">
    <header class="header">
        <h1><a class="logo" href="../index.jsp">Movie_Cinema</a></h1>
        <p class="userChoice">
            <a href="logOut_action.jsp">로그아웃</a>
            <a href="myPage.jsp">마이페이지</a>
        </p>
    </header>
<%--1. 영화 리스트 그대로 보여주기 --%>
<%--2. 영화 리스트 클릭해서 상세보기 할 수 있도록 함 --%>
    <section class="card_wrap container text-center">
        <div>
            <div class="row">
                <%
                    for(MovieDTO movie : list){
                %>

                <div class="col">
                    <div class="card" style="width: 15rem; height: fit-content;margin: 2% 0; box-sizing:border-box;">
                        <img src="<%=movie.getMovieImage()%>" class="card-img-top" alt="영화포스터">
                        <div class="card-body">
                            <h3 class="card-title"><%=movie.getMovieTitle()%></h3>
                            <a href="../movie/movieOne.jsp?movieId=<%=movie.getMovieId()%>" class="btn btn-primary">영화보기</a>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </section>

    <footer class="footer">
        <p>copyrightⒸ20240610</p>
        <p>address: bitcampGangnam</p>
    </footer>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
