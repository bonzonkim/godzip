<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="wrapper">
      <%@include file="/WEB-INF/views/common/header.jsp"%>


      제목 <input type="text" value="${myPostVo.title}" readonly>
      작성자 <input type="text" value="${myPostVo.writer}" readonly>
      작성일시 <span>${myPostVo.enroll_date}</span>
      <br>
      내용 <textarea name="" id="" cols="30" rows="10" readonly>${myPostVo.content}</textarea>
      <a download href="/resources/img/${myPostVo.changeName}.png" >파일 다운로드</a>
      <img src="/resources/img/${myPostVo.changeName}" alt="dddddd">
      
            <%@include file="/WEB-INF/views/common/footer.jsp"%>
      
    </div>
	

</body>
</html>