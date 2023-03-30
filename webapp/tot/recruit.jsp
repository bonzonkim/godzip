<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/util/recruit_style.css">

<title>Insert title here</title>
</head>
<style>
#recruit-text {
    background-color: #FCECD3;
	display: flex;
	justify-content: center;
	border-radius: 0px;
}
</style>
<body>
	<div id="wrap">
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
	          <div id="recruit-text">
	              <h2>채용공고</h2>
	          </div>
		<div id="preface" style="margin-top: 10%">
	      </div>

        <div class="reviewTot">
              <div class="reviewList">
                  <div class="list Top">
                      <div class="reviewNum tnum"><h5>NO</h5></div>
                      <div class="reviewTitle ttitle"><h5>TITLE</h5></div>
                      <div class="reviewWriter twriter"><h5>WRITER</h5></div>
                      <div class="reviewDate tdate"><h5>DATE</h5></div>
                  </div>
                  <div class="list li l20">
                      <div class="reviewNum num n20"><h5>20</h5></div>
                      <div id="reviewTitle title t20"><a href=""><h5>후기입니다 ~~~</h5></a></div>
                      <div class="reviewWriter writer w20"><h5>김본전</h5></div>
                      <div class="reviewDate date d20"><h5>2023.03.17</h5></div>
                  </div>
          </div>
          <div class="listBox">
              <div class="listButton">
              	<c:if test="${paginationVo.currentPage > 1}">
                  <div class="listnum leftButton"><a href="/post/list?page=${paginationVo.currentPage-1}"><img src="img/lessthan.png"></a></div>
                </c:if>
                <c:if test="${paginationVo.currenPagte = 1 }">
                  <div class="listnum leftButton"><img src="img/lessthan.png"></a></div>
                </c:if>
                 <c:if test="${paginationVo.currentPage == i}">
		          <span>${i}</span>
                  <div class="listnum list1"><a href=""><h5>${i}</h5></a></div>
		        </c:if>
                <c:if test="${paginationVo.currentPage != i}">
		          <a href="/post/list?page=${i}">${i}</a>
		        </c:if>
		        <c:if test="${paginationVo.currentPage < paginationVo.maxPage}">
			      <div class="listnum rightButton"><a href="/post/list?page=${paiginationVo.currentPage+1}"><img src="img/greaterthan_thick.png"></a></div>
			    </c:if>
			    <c:if test="${paginationVo.currentPage < paginationVo.maxPage}">
			      <div class="listnum rightButton"><img src="img/greaterthan_thick.png"></div>
			    </c:if>
              </div>
          </div>
          <div class="searchBox">
              <div class="searchButtom">
                  <div class="searchList">
                      <select>
                          <option>TITLE</option>
                          <option>WRITER</option>
                      </select>
                  </div>
                  <div class="searchbot"><input type="text" name="searchbox" placeholder="search"></div>
                  <div id="searchIcon"><a href=""><img src="/resources/img/magnifyer.png"></a></div>
              </div>
           </div>
             
	</div>
          	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</div>

</body>
</html>