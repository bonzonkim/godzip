<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/main/MainPage.css">
</head>
<style>
#best, #recent {
  text-align: center;
}
</style>
<body>
	<div id = "wrap">
        
        <%@ include file="/WEB-INF/views/common/header.jsp" %>

        <!-- 배너 슬라이드 -->
        <div class="slider">
            <img src="/resources/img/sport.jpg">
            <img src="/resources/img/Interior.jpg">
            <img src="/resources/img/toy.jpg">
        </div>

<!-- 리뷰 넘기기 -->
<div id="best"><h3>Best Review</h3></div>
<div class="bestReview">
    <div>
        <h1 class="bestReviewNext">&#8249;</h1>
    </div>
    <div class="box-group box-group-1 active">
        <div class="box"></div>
        <div class="box"></div>
        <div class="box"></div>
    </div>
    <div class="box-group box-group-2">
        <div class="box"></div>
        <div class="box"></div>
        <div class="box"></div>
    </div>
    <div class="box-group box-group-3">
        <div class="box"></div>
        <div class="box"></div>
        <div class="box"></div>
    </div>
    <div>
        <h1 class="bestNext">&#8250;</h1>
    </div>
</div>

<div id="recent"><h3>Recent Review</h3></div>
<div class="recentReview">
    <div>
      <h1 class="previous">&#8249;</h1>
    </div>
    <div class="box-group box-group-4 active">
      <div class="box"></div>
      <div class="box"></div>
      <div class="box"></div>
    </div>
    <div class="box-group box-group-5">
      <div class="box"></div>
      <div class="box"></div>
      <div class="box"></div>
    </div>
    <div class="box-group box-group-6">
      <div class="box"></div>
      <div class="box"></div>
      <div class="box"></div>
    </div>
    <div>
      <h1 class="next">&#8250;</h1>
    </div>
  </div>
  
<!-- 
<div id="show-more-activity">
    <h2>⬇️show more activity</h2>
</div>
 -->

<!-- category -->
<br>
<div id="category-text">
    <h2>Category</h2>
</div>
<div class="category-div">
    <div class="box-group box-group-cate active">
        <div class="box">
            <a href="/category/automoblie"> <!--사이트는 걍 예시-->
                <img src="/resources/img/automobile.jpg">
                <span class = "text">Car</span>
            </a>
        </div>
        <div class="box">
            <a href="/category/fashion">
                <img src="/resources/img/fashion.png">
                <span class = "text">Clothes</span>
            </a>
        </div>
        <div class="box">
            <a href="/category/interior">
                <img src="/resources/img/Interior.jpg">
                <span class = "text">Interior</span>
            </a>
        </div>
        <div class="box">
            <a href="/category/sports">
                <img src="/resources/img/sport.jpg">
                <span class = "text">Sport</span>
            </a>
        </div>
    </div>
</div>

<div class="category-div">
    <div class="box-group box-group-cate active">
        <div class="box">
            <a href="/category/toy">
                <img src="/resources/img/toy.jpg">
                <span class = "text">Toy</span>
            </a>
        </div>
        <div class="box">
            <a href="">
                <img src="/resources/img/Electronics.jpg">
                <span class = "text">Electronics</span>
            </a>
        </div>
        <div class="box">
            <a href="/WEB-INF/views/util/customer_center.jsp">
                <img src="/resources/img/Help.png">
                <span class = "text">Help</span>
            </a>
        </div>
        <div class="box">
            <a href="/WEB-INF/views/util/contact_us.jsp">
                <img src="/resources/img/More.png">
                <span class = "text">More</span>
            </a>
        </div>
    </div>
</div>
<!-- category end -->

	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</div>
</body>
</html>

<script>
    const slider = document.querySelector(".slider");
    const slides = slider.querySelectorAll("img");
    let currentSlide = 0;
    const slideInterval = 3000; // 3초
    
    function nextSlide() {
      slides[currentSlide].classList.remove("active");
      currentSlide = (currentSlide + 1) % slides.length;
      slides[currentSlide].classList.add("active");
    }
    
    setInterval(nextSlide, slideInterval);
    
    
    // 리뷰페이지 넘기기js
    // bestReview 요소에 대한 변수 정의
    const bestReview = document.querySelector('.bestReview');
    const bestGroups = bestReview.querySelectorAll('.box-group');
    const bestPrevBtn = bestReview.querySelector('.bestReviewNext');
    const bestNextBtn = bestReview.querySelector('.bestNext');
    let bestActiveIndex = 0;
    
    // recentReview 요소에 대한 변수 정의
    const recentReview = document.querySelector('.recentReview');
    const recentGroups = recentReview.querySelectorAll('.box-group');
    const recentPrevBtn = recentReview.querySelector('.previous');
    const recentNextBtn = recentReview.querySelector('.next');
    let recentActiveIndex = 0;
    
    // 이전 버튼 클릭 시 처리 함수
    function handlePrevClick(activeIndex, groups) {
      if (activeIndex > 0) {
        groups[activeIndex].classList.remove('active');
        groups[activeIndex - 1].classList.add('active');
        return activeIndex - 1;
      }
      return activeIndex;
    }
    
    // 다음 버튼 클릭 시 처리 함수
    function handleNextClick(activeIndex, groups) {
      if (activeIndex < groups.length - 1) {
        groups[activeIndex].classList.remove('active');
        groups[activeIndex + 1].classList.add('active');
        return activeIndex + 1;
      }
      return activeIndex;
    }
    
    // bestReview 요소의 이전 버튼 클릭 이벤트 핸들러 등록
    bestPrevBtn.addEventListener('click', () => {
      bestActiveIndex = handlePrevClick(bestActiveIndex, bestGroups);
    });
    
    // bestReview 요소의 다음 버튼 클릭 이벤트 핸들러 등록
    bestNextBtn.addEventListener('click', () => {
      bestActiveIndex = handleNextClick(bestActiveIndex, bestGroups);
    });
    
    
    // recentReview 요소의 이전 버튼 클릭 이벤트 핸들러 등록
    recentPrevBtn.addEventListener('click', () => {
      recentActiveIndex = handlePrevClick(recentActiveIndex, recentGroups);
    });
    
    // recentReview 요소의 다음 버튼 클릭 이벤트 핸들러 등록
    recentNextBtn.addEventListener('click', () => {
      recentActiveIndex = handleNextClick(recentActiveIndex, recentGroups);
    });
    </script>