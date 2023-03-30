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
            <h1>Fashion</h1>
        </div>
        <div class="category-catediv">
            <div class="catebox-group catebox-group-1 active">
                <div class="catebox">
                    <a href="MainPage.html"> 
                        <img src="/resources/img/category/fashion/female.png">
                        <span class = "text">Female</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/fashion/male.png">
                        <span class = "text">Male</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/fashion/unisex.png">
                        <span class = "text">Unisex</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/fashion/children.png">
                        <span class = "text">Children</span>
                    </a>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </div>
</body>
</html>