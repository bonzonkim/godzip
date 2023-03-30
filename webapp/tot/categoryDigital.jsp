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
            <h1>Digital</h1>
        </div>
        <div class="category-catediv">
            <div class="catebox-group catebox-group-1 active">
                <div class="catebox">
                    <a href="MainPage.html"> 
                        <img src="/resources/img/category/digital/appliances.png">
                        <span class = "text">Appliances</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/digital/computer.png">
                        <span class = "text">Laptop&Computer</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/digital/gadget.png">
                        <span class = "text">Gadget</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/digital/iot.png">
                        <span class = "text">Iot</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/digital/mobile.png">
                        <span class = "text">Mobile</span>
                    </a>
                </div>
                <div class="catebox">
                    <a href="MainPage.html">
                        <img src="/resources/img/category/digital/wearable.png">
                        <span class = "text">Wearable</span>
                    </a>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </div>
</body>
</html>