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
              	<input type="hidden" name="writer" value="">
              	<!-- 회원번호는 hidden 처리 -->
                <label for="title" class="input-label">제목</label>
                <input type="text" id="title" name="title" class="input-field">
              </div>
            
              <div class="form-group">
                <label for="category1" class="input-label">카테고리 1</label>
                <select id="category1" name="category1" onchange="updateCategory2Options()" class="input-field">
                  <option value="option1">Car</option>
                  <option value="option2">Digital</option>
                  <option value="option3">Fashion</option>
                  <option value="option4">Home Interior</option>
                  <option value="option5">Sports</option>
                  <option value="option6">Toy</option>
                </select>
              </div>
            
              <div class="form-group">
                <label for="category2" class="input-label">카테고리 2</label>
                <select id="category2" name="category2" class="input-field">
                	<semi:if test="">
	                  <option value="option1-1">Carwash</option>
	                  <option value="option1-2">Component</option>
	                  <option value="option1-3">Exterior</option>
	                  <option value="option1-4">Interior</option>
                   </semi:if>
                	<semi:if test="">
	                  <option value="option2-1">Appliances</option>
	                  <option value="option2-2">Computer</option>
	                  <option value="option2-3">Gadget</option>
	                  <option value="option2-4">Iot</option>
	                  <option value="option2-5">Mobile</option>
	                  <option value="option2-6">Wearable</option>
                   </semi:if>
                	<semi:if test="">
	                  <option value="option3-1">Female</option>
	                  <option value="option3-2">Male</option>
	                  <option value="option3-3">Unisex</option>
	                  <option value="option3-4">Children</option>
                   </semi:if>
                	<semi:if test="">
	                  <option value="option4-1">Furniture</option>
	                  <option value="option4-2">Organize</option>
	                  <option value="option4-3">Bedding</option>
	                  <option value="option4-4">Bathroom</option>
                   </semi:if>
                	<semi:if test="">
	                  <option value="option5-1">Cycling</option>
	                  <option value="option5-2">Golf</option>
	                  <option value="option5-3">Skates</option>
	                  <option value="option5-4">Swimming</option>
	                  <option value="option5-5">Tennis</option>
                   </semi:if>
                	<semi:if test="">
	                  <option value="option6-1">Block</option>
	                  <option value="option6-2">Doll</option>
	                  <option value="option6-3">Figure</option>
	                  <option value="option6-4">Game</option>
	                  <option value="option6-4">Puzzle</option>
	                  <option value="option6-4">Robot</option>
                   </semi:if>
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
</html>