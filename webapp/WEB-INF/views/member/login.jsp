<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/member/login.css">
<script defer src="/resources/js/login.js"></script>

</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
    <form class="login" action="/member/login" method="post">
        <h1 id="login">로그인</h1>
        <label for="username">아이디:</label>
        <input type="text" id="memberId" name="memberId" required>
        
        <label for="password">비밀번호:</label>
        <input type="password" id="memberPwd" name="memberPwd" required>
        
        <a onclick="saveLogin()">계정정보 저장하기</a>
        <input type="checkbox" id="remember-me" name="remember-me">
        <input type="submit" value="Login">
        
        <div class="button-container">
          <button id="button1" class="google-button" onclick="window.location.href ='https://accounts.google.com/o/oauth2/auth?' +
          'client_id={486961560488-27epnb7rh697gknt75m2p8qn0aenp2do.apps.googleusercontent.com}&'+
          'redirect_uri={http://127.0.0.1:5500/login.html}&'+
          'response_type=token&'+
          'scope=https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile';">Login with Google</button>
          <button id="button2" class="naver-button">Login with Naver</button>
          <button id="button3" class="kakao-button">Login with KakaoTalk</button>
        </div>
    </form>
    
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    <script>
        const parsedHash = new URLSearchParams(window.location.hash.substring(1));
        const accessTokens = parsedHash.get("access_token");
  
        const { da } = await Api.post("oauth/google", { accessToken });
    </script>
  
    <script>
        const { accessToken } = req.body;
  
        const { data } = await axios.get(
              `https://www.googleapis.com/oauth2/v1/userinfo?access_token=${accessToken}`
        );
  
    </script>
  
  
    <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
  
  
</body>
</html>

