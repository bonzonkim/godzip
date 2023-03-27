<%@ taglib prefix="semi" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.welcome {
  margin: -20px 190px -35px 0;
  display: flex;
  justify-content: end;
}
</style>
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/common/publicTopStyle.css">
  <link rel="stylesheet" href="/resources/css/common/hoverMenu.css">
  <script defer src = "/resources/js/topHoverMenu.js"></script>
</head>

<semi:if test="${alertMsg != null}">
	<script>
		alert('${alertMsg}');
	</script>
</semi:if>
<semi:remove var="alertMsg"/>

<body>
    <div id="childTopDiv">
        <div id="toptopBox">
            <a href="/">
                <img id="mainLogo" src="/resources/img/godzip_white_cropped.PNG" alt="로고">
            </a>
            <div id="searchbarBox">
            <input type="text" name="searchBar" placeholder="검색어"><input type="button" class="searchButton" name="search" value="SEARCH">
            </div>
            <div id="loginOutBox">
            <semi:if test="${loginMember == null}">
                <input type="button" class="searchButton" name="login" value="LogIn" onclick="location.href = '/member/login';">
                <input type="button" class="searchButton" name="logout" value="Sign Up" onclick="location.href = '/member/join';">
            </semi:if>
            <semi:if test="${loginMember != null}">
                <input type="button" class="searchButton" name="login" value="LogOut" onclick="location.href = '/member/logout';">
                <input type="button" class="searchButton" name="logout" value="MyPage" onclick="location.href = '/tot/mypage.jsp';">
            </semi:if>
            </div>
        </div>
        <semi:if test="${loginMember != null}">
	        <div class="welcome">
	            <h5>"${loginInfo.nick}"님 환영합니다.</h5>
	        </div>
        </semi:if>
        <!-- Attached by Hoon (03.13)-->
        <br>
        <div id="parent" style="display: flex;">
            <div class="child" style="flex: 1; position: relative;">
                <a href = '/tot/categoryCar.jsp'><h2>Car</h2></a>
                <!-- <div class="hidden" style="display: none; position: absolute;">
                    <p><a href="/board/list">Carwash</a></p> 
                    <p><a href="/board/list">Component</a></p>
                    <p><a href="/board/list">Exterior</a></p>
                    <p><a href="/board/list">Interior</a></p>
                </div> -->
            </div>
            <div class="child" style="flex: 1; position: relative;">
                <a href = '/tot/categoryDigital.jsp'><h2>Digital</h2></a>
                <!-- <div class="hidden" style="display: none; position: absolute;">
                    <p><a href="/board/list">Appliances</a></p>
                    <p><a href="/board/list">Computer</a></p>
                    <p><a href="/board/list">Gadget</a></p>
                    <p><a href="/board/list">Iot</a></p>
                    <p><a href="/board/list">Mobile</a></p>
                    <p><a href="/board/list">Wearable</a></p>
                </div> -->
            </div>
            <div class="child" style="flex: 1; position: relative;">
                <a href = '/tot/categoryFashion.jsp'><h2>Fashion</h2></a>
                <!-- <div class="hidden" style="display: none; position: absolute;">
                    <p><a href="/board/list">Female</a></p>
                    <p><a href="/board/list">Male</a></p>
                    <p><a href="/board/list">Unisex</a></p>
                    <p><a href="/board/list">Children</a></p>
                </div> -->
            </div>
            <div class="child" style="flex: 1; position: relative;">
                <a href = '/tot/categoryHome.jsp'><h2>Home</h2></a>
                <!-- <div class="hidden" style="display: none; position: absolute;">
                    <p><a href="/board/list">Furniture</a></p>
                    <p><a href="/board/list">Organize</a></p>
                    <p><a href="/board/list">Bedding</a></p>
                    <p><a href="/board/list">Light</a></p>
                    <p><a href="/board/list">Bathroom</a></p>
                </div> -->
            </div>
            <div class="child" style="flex: 1; position: relative;">
                <a href = '/tot/categorySports.jsp'><h2>Sports</h2></a>
                <!-- <div class="hidden" style="display: none; position: absolute;">
                    <p><a href="/board/list">Cycling</a></p>
                    <p><a href="/board/list">Golf</a></p>
                    <p><a href="/board/list">Skates</a></p>
                    <p><a href="/board/list">Swimming</a></p>
                    <p><a href="/board/list">Tennis</a></p>
                </div> -->
            </div>
            <div class="child" style="flex: 1; position: relative;">
                <a href = '/tot/categoryToy.jsp'><h2>Toy</h2></a>
                <!-- <div class="hidden" style="display: none; position: absolute;">
                    <p><a href="/board/list">Block</a></p>
                    <p><a href="/board/list">Doll</a></p>
                    <p><a href="/board/list">Figure</a></p>
                    <p><a href="/board/list">Game</a></p>
                    <p><a href="/board/list">Puzzle</a></p>
                    <p><a href="/board/list">Robot</a></p>
                </div> -->
            </div>
    
        </div><!-- id: parent -->
    </div><!-- id: childTopDiv -->

</body>
</html>

<script>
    const children = document.querySelectorAll('.child');
  
    children.forEach(child => {
        const hidden = child.querySelector('.hidden');
  
        child.addEventListener('mouseenter', () => {
            hidden.style.display = 'block';
  
        });
  
        child.addEventListener('mouseleave', () => {
            hidden.style.display = 'none';
        });
    });
  </script>