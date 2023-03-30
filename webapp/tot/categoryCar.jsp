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
            <h1>Car</h1>
        </div>
        
        <div class="category-catediv">
            <div class="catebox-group catebox-group-1 active">
                <div class="catebox">
                	<a href="/board/list?page=1">
                        <img src="/resources/img/category/car/carwash.png">
                        <span class = "text">CarWash</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="/board/list">
                        <img src="/resources/img/category/car/component.png">
                        <span class = "text">Component</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/car/exterior.png">
                        <span class = "text">Exterior</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/car/interior.png">
                        <span class = "text">Interior</span>
                    </a>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </div>
</body>
</html>