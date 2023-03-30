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
<link rel="stylesheet" type="text/css" href="/resources/css/detail/detail.css">
<body>
<div id="wrapper">
        <%@include file="/WEB-INF/views/common/header.jsp"%>

        <form>
            <div class="form-group">
                <label for="title">제목</label>
                <input type="text" id="title" value="${boardVo.title}" readonly>
            </div>
            <div class="form-group">
                <label for="writer">작성자</label>
                <input type="text" id="writer" value="${boardVo.writer}" readonly>
            </div>
            <div class="form-group">
                <label for="enroll_date">작성일시</label>
                <span id="enroll_date">${boardVo.enroll_date}</span>
            </div>
            <div class="form-group">
                <label for="content">내용</label>
                <textarea id="content" readonly>${boardVo.content}</textarea>
            </div>
            <div class="form-group">
                <a download href="/resources/img/${boardVo.changeName}.png" class="button">파일 다운로드</a>
                <img src="/resources/img/${boardVo.changeName}" alt="dddddd" class="image">
            </div>
        </form>

        <%@ include file = "/WEB-INF/views/board/comment.jsp" %>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </div>
</body>
</html>
