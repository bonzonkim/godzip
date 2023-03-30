<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.kh.app.util.JDBCTemplate"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/board/writeRev.css">
<link rel="stylesheet" href="/resources/css/board/report.css">
<script defer src = "/resources/js/writeRev.js"></script>
<title>Insert title here</title>
</head>
<body>

    <div id="wrap">
        <%@ include file="/WEB-INF/views/common/header.jsp" %>

        <div class="RevBox">
            <h1>Write Review</h1>
            <form action="/board/write" method="POST" enctype="multipart/form-data">
              <div class="form-group">
                 <input type="hidden" name="writer" value="${loginMember.no}">
                 <!-- 회원번호는 hidden 처리 -->
                <label for="title" class="input-label">제목</label>
                <input type="text" id="title" name="title" class="input-field">
              </div>
            
           
            
              <div class="form-group">
                <label for="content" class="input-label">내용</label>
                <textarea id="content" name="content" class="input-field"></textarea>
              </div>
            
              <div class="form-group">
                <label for="image" class="input-label">이미지 첨부</label>
                <input type="file" id="image" name="f" accept="image/*" class="input-field">
              </div>
            
            
              <button type="submit">제출</button>
            </form>
            </div>
            
            <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    </div>

</body>
</html>