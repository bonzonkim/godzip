<%--
  Created by IntelliJ IDEA.
  User: b9
  Date: 2023-03-29
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
  <title>Title</title>
</head>
<link rel="stylesheet" href="/resources/css/admin/admin_administration_style.css">
<body>
<div id="wrap">
  <%@include file="/WEB-INF/views/common/header.jsp"%>

  <h2 class="heading-section">회원 목록</h2>
  <div class="container">
    <div class="table-wrap">
      <table class="table" style="border: 0.1px solid">
        <thead class="thead">
        <tr>
          <th>아이디</th>
          <th>닉네임</th>
          <th>작성일시</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${memberManageVo}" var="member">
          <tr>
            <td>${member.id}</td>
            <td>${member.nick}</td>
            <td>${member.enrollDate}</td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>
  </div>

  <div id="empty" style="padding-bottom: 100%"></div>
  <%@include file="/WEB-INF/views/common/footer.jsp"%>
</div>

</body>
</html>
