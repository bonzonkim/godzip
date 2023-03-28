<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/util/report.css">
<script defer src = "/resources/js/report.js"></script>

<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
		<h1 class="report-header">
	    <span class="report-title">Report</span>
	    <img src="/resources/img/flag.png" class="report-icon">
		  </h1>
		  <div class="report-guidelines">
		    <ul>
		        <h4>!! 신고 가능한 사유는 아래⬇️와 같으며 이외에도 코멘트가 부적절하다고 생각하시는 경우 상담센터로 유선 혹은 메일로 문의 부탁드립니다. !!</h4>
		        <h6>사유에 마우스 커서를 올리면 사유의 처벌을 보실 수 있습니다.</h6>
		        <li class="reason1">부적절한 언어 사용</li>
		        <li class="reason2">카테고리 관련 내용과 불일치</li>
		        <li class="reason3">인종, 사회적 차별</li>
		        <li class="reason4">실제의 사실과 다른내용</li>
		        <li class="reason5">광고, 상업적 내용</li>
		    </ul>
		  </div>
		
		  <div class = "title11"><h1>How do I report?</h1></div>
		  <div class="report-guidelines">
		    1. 신고할 코멘트가 작성된 페이지로 이동합니다.
		    <br>
		    2. 하단의 사진과 같이 코멘트 상단버튼에서 report comment 클릭 후 이어서 표시되는 신고이유를 선택합니다.
		    <div class="image-wrapper">
		        <img src="/resources/img/report.jpg" alt="report">
		    </div>
		</div>
		
		<div class = "report-center">
		    <div class="rebox center-box">
		        <h3>고객_상담센터</h3>
		        <p>Phone> +82)2.123.1234 <br> Email> abc@godzip.com</p>
		      </div>
		      <div class="rebox report-box">
		        <h3>신고하기</h3>
		        <p>report를 누르시면 신고하실 수 있습니다.</p>
		        <a href="#" class="reportBtn" id="report-link">Report</a>
		      </div>
		</div>
		<div class="report-warning">* 보내주신 신고 내용은 관리자가 검토 후에 가이드라인에 따라 처리 됩니다. 검토기간은 며칠이 소요될 수 있으며 검토 완료 후 처리 결과를 반영 예정입니다.</div>
  		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
		  	
	</div>

</body>
</html>