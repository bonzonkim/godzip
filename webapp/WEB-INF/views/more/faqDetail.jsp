<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/util/faqDetail.css">
</head>
<body>


    <div id="wrapper">
      <%@include file="/WEB-INF/views/common/header.jsp"%>

	<main>
	<div id="title">
      제목 <input type="text" value="${fVo.title}" readonly>
      작성자 <input type="text" value="${fVo.adminNo}" readonly>
      작성일시 <span>${fVo.enrollDate}</span>
	</div>
	
	<div id="content">
		  <div id="content1">

	      <img src="/resources/img/${fVo.changeName}" alt="FAQ이미지">
		  </div>
	      <div id="content2">
	      <textarea name="" id="" cols="30" rows="10" readonly>${fVo.content}</textarea>
	      </div>
	</div>
    </main>
    <div  id="btnArea">
    <a href="/faq"><button class="searchButton">목록으로</button></a>
    </div>



        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </div>

</body>
</html>