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
            <h1>Review</h1>
            <form action="/board/list" method="POST" enctype="multipart/form-data">
              <div class="form-group">
                 <input type="hidden" name="writer" value="${loginMember.no}">
                 <!-- 회원번호는 hidden 처리 -->
                <label for="title" class="input-label">제목</label>
                <input type="text" id="title" name="title" class="input-field" value="${boardVo.title}" readonly></input>
              </div>
            
              <div class="form-group">
                <label for="category1" class="input-label">카테고리</label>
                <input type="text" id="category" name="category" class="input-field" value="${boardVo.category1}" readonly>
                  <!-- <%
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
                </select> -->
              </div>
           
            
              <div class="form-group">
                <label for="content" class="input-label">내용</label>
                <textarea id="content" name="content" class="input-field content" readonly>${boardVo.content}</textarea>
              </div>
            
              <button type="submit" onclick="/board/list?page=1">목록으로</button>
            </form>
            </div>
            <p>
            <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    </div>


</body>
</html>