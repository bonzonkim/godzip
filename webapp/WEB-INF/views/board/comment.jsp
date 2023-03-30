<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/comment/commentStyle.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script defer src="/resources/js/commentJs.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<div id="wrapper">

		<div id="form-commentInfo">
			<div id="comment-count">
				댓글 <span id="count">0</span>
			</div>
			<input id="comment-input" name= comment placeholder="댓글을 입력해 주세요.">
			<button id="submit" name = comment>등록</button>
		</div>
		<div id=comments></div>
	</div>
</body>
</html>