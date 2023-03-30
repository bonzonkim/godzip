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
            <h1>Sports</h1>
        </div>
        <div class="category-catediv">
            <div class="catebox-group catebox-group-1 active">
                <div class="catebox">
                    <a href="MainPage.html"> 
                        <img src="/resources/img/category/sports/cycling.png">
                        <span class = "text">Cycling</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/sports/golf.png">
                        <span class = "text">Golf</span> <!-- 수납, 정리 -->
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/sports/skates.png">
                        <span class = "text">Skates</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/sports/swimming.png">
                        <span class = "text">Swimming</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/sports/tennis.png">
                        <span class = "text">Tennis</span>
                    </a>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </div>
</body>
</html>