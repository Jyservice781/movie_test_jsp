<%@ page import="connecter.MysqlConnector" %>
<%@ page import="controller.MovieController" %>
<%@ page import="model.MovieDTO" %>
<%@ page import="controller.UserController" %>
<%@ page import="model.UserDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="./resources/static/css/common.css">
    <link rel="stylesheet" href="./resources/static/css/index.css">
</head>
<body>
<%
    MysqlConnector connector = new MysqlConnector();
    MovieController movieController = new MovieController(connector);
    UserController userController = new UserController(connector);

    ArrayList<MovieDTO> list = movieController.selectAll();

%>

<div class="all_wrap">
    <header class="header">
        <h1><a class="logo" href="#">Movie_Cinema</a></h1>

        <p class="userChoice">
            <a href="./user/logIn.jsp">로그인</a>
            <a href="./user/register.jsp">회원가입</a>
        </p>
    </header>
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
                            <a href="./movie/movieOne.jsp?movieId=<%=movie.getMovieId()%>" class="btn btn-primary">영화보기</a>
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
