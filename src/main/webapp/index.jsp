<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/index.css">
</head>
<body>


<div class="all_wrap">
    <header class="header">
        <h1><a class="logo" href="#">Movie_Picture</a></h1>

        <p class="userChoice">
            <a href="./user/logIn.jsp">로그인</a>
            <a href="./user/register.jsp">회원가입</a>
        </p>
    </header>

    <section class="card_wrap">
        <div class="container text-center">
            <div class="row">
                <div class="col">
                    <div class="card" style="width: 15rem; height: fit-content;margin: 2% 0; box-sizing:border-box;">
                        <img src="./jpg/puriosa.jpg" class="card-img-top" alt="퓨리오사">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <a href="./movie/movieOne.jsp" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 15rem; height: fit-content;margin: 2% 0; box-sizing:border-box;">
                        <img src="./jpg/congpu_panda.jpg" class="card-img-top" alt="쿵푸팬더이미지">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <a href="./movie/movieOne.jsp" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 15rem; height: fit-content; margin: 2% 0; box-sizing:border-box;">
                        <img src="./jpg/puriosa.jpg" class="card-img-top" alt="퓨리오사">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <a href="./movie/movieOne.jsp" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 15rem; height: fit-content;margin: 2% 0; box-sizing:border-box;">
                        <img src="./jpg/congpu_panda.jpg" class="card-img-top" alt="쿵푸팬더이미지">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <a href="./movie/movieOne.jsp" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer">
        <p>copyrightⒸ20240610</p>
        <p>address: bitcampGangnam</p>
    </footer>
</div>
</body>
</html>
