<%--
  Created by IntelliJ IDEA.
  User: b9
  Date: 2023-03-29
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="/resources/css/admin/admin_write_style.css">
<link rel="stylesheet" href="/resources/css/admin/file_form_style.css">

<body>

<div id="wrap">
    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <div class="write-board">
        <div class="write-header">
            <select class="option">
                <option value="press">보도자료</option>
                <option value="recruit">채용공고</option>
                <option value="faq">FAQ</option>
                <option value="announcement">공지사항</option>
            </select>
        </div>
        <form>
            <div class="write-group">

                <div class="form__group">
                    <input type="text" class="form__field w-100" placeholder="Input text">
                    <label  class="form__label"> 제목 </label>
                </div>
            </div>
            <div class="write-group">
                <textarea name="content" id="content" cols="30" rows="10" style="resize: none"></textarea>
            </div>

            <form class="file-form"> <!-- 이미지 올리기위해 form태그가 또 필요한지는 모르겠음? -->
                <label for="file-input" class="drop-container">
                    <span class="drop-title">Drop files here</span>
                    or
                    <input type="file" accept="image/*" id="file-input">
                </label>
            </form>
            <div class="write-group">
                <input value="등록" type="submit">
            </div>
        </form>
    </div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</div>

</body>
</html>
