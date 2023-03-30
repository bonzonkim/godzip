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
                <label for="category1" class="input-label">카테고리 1</label>
                <select id="category1" name="category1" onchange="updateCategory2Options()" class="input-field">
                  <!-- <option value="option1">Car</option>
                  <option value="option2">Digital</option>
                  <option value="option3">Fashion</option>
                  <option value="option4">Home Interior</option>
                  <option value="option5">Sports</option>
                  <option value="option6">Toy</option> -->
                  
                  
                  <%
               Connection conn = JDBCTemplate.getConnection();
                PreparedStatement pstmt = conn.prepareStatement("SELECT NO, CATEGORY_NM FROM DIVISION");
                ResultSet rs = pstmt.executeQuery();
                while (rs.next()) {
                    String no = rs.getString("NO");
                    String category_nm = rs.getString("CATEGORY_NM");
                    out.println("<option value='" + no + "'>"+category_nm+"</option>");
                }
                rs.close();
                pstmt.close();
                conn.close();
            %>
                </select>
              </div>
           
            
              <div class="form-group">
                <label for="content" class="input-label">내용</label>
                <textarea id="content" name="content" class="input-field"></textarea>
              </div>
            
              <div class="form-group">
                <label for="image" class="input-label">이미지 첨부</label>
                <input type="file" id="image" name="f" accept="image/*" class="input-field">
              </div>
            
              <div class="form-group">
                <label for="video" class="input-label">비디오 첨부</label>
                <input type="file" id="video" name="video" accept="video/*" class="input-field">
              </div>
            
              <button type="submit">제출</button>
            </form>
            </div>
            
            <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    </div>

</body>
<script  src = "/resources/js/writeRev.js?ver=1"></script>

</html>