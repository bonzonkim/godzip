<%--
  Created by IntelliJ IDEA.
  User: b9
  Date: 2023-03-28
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>


    <div id="wrapper">
      <%@include file="/WEB-INF/views/common/header.jsp"%>


      제목 <input type="text" value="${pressBoardVo.title}" readonly>
      작성자 <input type="text" value="${pressBoardVo.writer}" readonly>
      작성일시 <span>${pressBoardVo.enroll_date}</span>
      <br>
      내용 <textarea name="" id="" cols="30" rows="10" readonly>${pressBoardVo.content}</textarea>
      <a download href="/resources/img/press/${pressBoardVo.changeName}.png" >파일 다운로드</a>
      <img src="/resources/img/press/${pressBoardVo.changeName}" alt="dddddd">
    </div>

</body>
</html>
