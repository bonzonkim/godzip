<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/category/categoryPage.css">
<title>Insert title here</title>
</head>
<body>

    <div id="wrap">
        <%@ include file="/WEB-INF/views/common/header.jsp" %>
        <div id="category-cate">
            <h1>Toy</h1>
        </div>
        <div class="category-catediv">
            <div class="catebox-group catebox-group-1 active">
                <div class="catebox">
                    <a href="MainPage.html"> 
                        <img src="/resources/img/category/toy/block.png">
                        <span class = "text">Block</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/toy/doll.png">
                        <span class = "text">Doll</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/toy/figure.png">
                        <span class = "text">Figure</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/toy/game.png">
                        <span class = "text">Game</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/toy/puzzle.png">
                        <span class = "text">Puzzle</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/toy/robot.png">
                        <span class = "text">Robot</span> <!--프라모델-->
                    </a>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </div>
</body>
</html>