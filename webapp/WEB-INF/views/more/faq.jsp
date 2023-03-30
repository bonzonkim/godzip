<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/util/faq.css">
<style type="text/css">

</style>

</head>
<body>

<div id="wrapper">
  <%@include file="/WEB-INF/views/common/header.jsp" %>
	<div id="faqname">
	<h2>FAQ - 자주 뭍는 질문</h2>
	</div>

  <main>
    <div id="table-wrap">
      <table id="faqtable">
        <thead>
        <tr>
          <th class="no">글번호</th>
          <th class="title">제목</th>
          <th class="write">작성자</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${faqList}" var="faq">
          <tr>
            <td class="no">${faq.no}</td>
            <td class="title">${faq.title}</td>
            <td class="write">${faq.adminNo}</td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>




    <div id="prev-next-btn-wrap">
      <c:if test="${paginationVo.currentPage > 1}">
        <a href="/faq?page=${paginationVo.currentPage-1}">처음페이지</a>
      </c:if>
      <c:forEach var="i" begin="${paginationVo.startPage}" end="${paginationVo.endPage}" step="1">
        <c:if test="${paginationVo.currentPage == i}">
          <span>${i}</span>
        </c:if>
        <c:if test="${paginationVo.currentPage != i}">
          <a href="/faq?page=${i}">${i}</a>
        </c:if>
      </c:forEach>
      <c:if test="${paginationVo.currentPage < paginationVo.maxPage}">
        <a href="/faq?page=${paiginationVo.currentPage+1}">></a>
      </c:if>
    </div>

      <div id="button-wrap">
        <button  class="searchButton" id="writeBtn" onclick="location.href='/faq/write'">
			FAQ작성
        </button>
      </div>
  </main>
  	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</div>

</body>
<script>
  const tbody = document.querySelector('main tbody');
  tbody.addEventListener('click', (event) => {
    const no = (event.target.parentNode.children[0].innerText);
    window.location.href = "/faq/detail?no=" + no;
  });

</script>
</html>