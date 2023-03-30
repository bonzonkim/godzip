<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="/resources/css/board/reviewPageStyle.css">
 <script defer src="/resources/js/reviewPage.js"></script>
<title>Insert title here</title>
</head>
<body>

<div id="wrap">
  <%@include file="/WEB-INF/views/common/header.jsp" %>

	<div id="childMiddleDiv">

        <div id="inChildMiddle">

            <div id="productInfo" >
                <img src="/resources/img/category/digital/mobile.png" alt="상품사진" width="200px" height="200px">
                <div id="productInfo-child">
                    <h1 class="productName">DIGITAL</h1>
                    <h2>MOBILE</h2>
                </div>
            </div>
            <hr>
            <div id="reviewDetail">
            </div>

            <div id="buttonLine">
                <button class="insideBtns"><a href="/board/write">write a review</a></button>
                <button class="insideBtns" >review Filter</button> 
            </div>
			
			<c:forEach items="${boardList}" var="board">
            <div id="reviewContainer">
                <div class="review">
                  <div class="review-header">
                    <!-- <img src="path/to/profile-picture.jpg" alt="프로필 사진"> <button class="reportBtn">report</button> -->
                    <p class="nickname">${board.writer}</p>
                    <p class="content">${board.title}</p>
                  </div>
                  <p class="date">2023년 3월 17일</p>
                  <div class="actions">
                    <button class="inReview likeBtn" data-count="0">Like</button>
                    <span class="likeCount"></span>
                    <button class="inReview dislikeBtn" data-count="0">Dislike</button>
                    <span class="dislikeCount"></span>
                    <button id="comment-btn" class="inReview commentBtn" data-count="0">Comment</button>
                    <span class="commentCount"></span>
                  </div>            
                  <hr>
                </div>
                <div class="review">
                  <div class="review-header">
                    <img src="path/to/profile-picture.jpg" alt="프로필 사진"> <button class="reportBtn">report</button>
                    <p class="nickname">사용자 닉네임</p>
            
                    <p class="date">2023년 3월 16일</p>
                    <div class="rating">
                      <span class="star full"></span>
                      <span class="star full"></span>
                      <span class="star half"></span>
                      <span class="star empty"></span>
                      <span class="star empty"></span>
                    </div>
                  </div>
                  <p class="content">두 번째 리뷰</p>
                  <div class="actions">
                    <button class="inReview likeBtn" data-count="0">Like</button>
                    <span class="likeCount"></span>
                    <button class="inReview dislikeBtn" data-count="0">Dislike</button>
                    <span class="dislikeCount"></span>
                    <button id="comment-btn" class="inReview commentBtn" data-count="0">Comment</button>
                    <span class="commentCount"></span>
                  </div>   
                  <hr>
                </div>
                <div class="review">
                  <div class="review-header">
                    <img src="path/to/profile-picture.jpg" alt="프로필 사진"><button class="reportBtn">report</button>
                    <p class="nickname">사용자 닉네임</p>

                    <p class="date">2023년 3월 15일</p>
                    <div class="rating">
                      <span class="star full"></span>
                      <span class="star full"></span>
                      <span class="star full"></span>
                      <span class="star full"></span>
                      <span class="star empty"></span>
                    </div>
                  </div>
                  <p class="content">세 번째 리뷰 </p>
                  <div class="actions">
                    <button class="inReview likeBtn" data-count="0">Like</button>
                    <span class="likeCount"></span>
                    <button class="inReview dislikeBtn" data-count="0">Dislike</button>
                    <span class="dislikeCount"></span>
                    <button id="comment-btn" class="inReview commentBtn" data-count="0">Comment</button>
                    <span class="commentCount"></span>
                  </div>     
                  <hr>
                </div>
                <div class="review">
                    <div class="review-header">
                      <img src="path/to/profile-picture.jpg" alt="프로필 사진"> <button class="reportBtn">report</button>
                      <p class="nickname">사용자 닉네임</p>
                      <p class="date">2023년 3월 17일</p>
                      <div class="rating">
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star empty"></span>
                        <span class="star empty"></span>
                      </div>
                    </div>
                    <p class="content">네 번째 리뷰</p>
                      <div class="actions">
                        <button class="inReview likeBtn" data-count="0">Like</button>
                        <span class="likeCount"></span>
                        <button class="inReview dislikeBtn" data-count="0">Dislike</button>
                        <span class="dislikeCount"></span>
                        <button id="comment-btn" class="inReview commentBtn" data-count="0">Comment</button>
                        <span class="commentCount"></span>
                      </div>     
                    <hr>
                  </div>
                  <div class="review">
                    <div class="review-header">
                      <img src="path/to/profile-picture.jpg" alt="프로필 사진"> <button class="reportBtn">report</button>
                      <p class="nickname">사용자 닉네임</p>
              
                      <p class="date">2023년 3월 16일</p>
                      <div class="rating">
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star half"></span>
                        <span class="star empty"></span>
                        <span class="star empty"></span>
                      </div>
                    </div>
                    <p class="content">다섯 번째 리뷰</p>
                    <div class="actions">
                        <button class="inReview likeBtn" data-count="0">Like</button>
                        <span class="likeCount"></span>
                        <button class="inReview dislikeBtn" data-count="0">Dislike</button>
                        <span class="dislikeCount"></span>
                        <button id="comment-btn" class="inReview commentBtn" data-count="0">Comment</button>
                        <span class="commentCount"></span>
                    </div>   
                    <hr>
                  </div>
                  <div class="review">
                    <div class="review-header">
                      <img src="path/to/profile-picture.jpg" alt="프로필 사진"><button class="reportBtn">report</button>
                      <p class="nickname">사용자 닉네임</p>
  
                      <p class="date">2023년 3월 15일</p>
                      <div class="rating">
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star empty"></span>
                      </div>
                    </div>
                    <p class="content">여섯 번째 리뷰 </p>
                    <div class="actions">
                        <button class="inReview likeBtn" data-count="0">Like</button>
                        <span class="likeCount"></span>
                        <button class="inReview dislikeBtn" data-count="0">Dislike</button>
                        <span class="dislikeCount"></span>
                        <button id="comment-btn" class="inReview commentBtn" data-count="0">Comment</button>
                        <span class="commentCount"></span>
                    </div> 
                    <hr>
                  </div>
                  <div class="review">
                    <div class="review-header">
                      <img src="path/to/profile-picture.jpg" alt="프로필 사진"> <button class="reportBtn">report</button>
                      <p class="nickname">사용자 닉네임</p>
                      <p class="date">2023년 3월 17일</p>
                      <div class="rating">
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star empty"></span>
                        <span class="star empty"></span>
                      </div>
                    </div>
                    <p class="content">일곱 번째 리뷰</p>
                    <div class="actions">
                        <button class="inReview likeBtn" data-count="0">Like</button>
                        <span class="likeCount"></span>
                        <button class="inReview dislikeBtn" data-count="0">Dislike</button>
                        <span class="dislikeCount"></span>
                        <button id="comment-btn" class="inReview commentBtn" data-count="0">Comment</button>
                        <span class="commentCount"></span>
                    </div> 
                    <hr>
                  </div>
                  <div class="review">
                    <div class="review-header">
                      <img src="path/to/profile-picture.jpg" alt="프로필 사진"> <button class="reportBtn">report</button>
                      <p class="nickname">사용자 닉네임</p>
              
                      <p class="date">2023년 3월 16일</p>
                      <div class="rating">
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star half"></span>
                        <span class="star empty"></span>
                        <span class="star empty"></span>
                      </div>
                    </div>
                    <p class="content">여덟 번째 리뷰</p>
                    <div class="actions">
                        <button class="inReview likeBtn" data-count="0">Like</button>
                        <span class="likeCount"></span>
                        <button class="inReview dislikeBtn" data-count="0">Dislike</button>
                        <span class="dislikeCount"></span>
                        <button id="comment-btn" class="inReview commentBtn" data-count="0">Comment</button>
                        <span class="commentCount"></span>
                    </div>
                    <hr>
                  </div>
                  <div class="review">
                    <div class="review-header">
                      <img src="path/to/profile-picture.jpg" alt="프로필 사진"><button class="reportBtn">report</button>
                      <p class="nickname">사용자 닉네임</p>
  
                      <p class="date">2023년 3월 15일</p>
                      <div class="rating">
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star empty"></span>
                      </div>
                    </div>
                    <p class="content">아홉 번째 리뷰 </p>
                    <div class="actions">
                        <button class="inReview likeBtn" data-count="0">Like</button>
                        <span class="likeCount"></span>
                        <button class="inReview dislikeBtn" data-count="0">Dislike</button>
                        <span class="dislikeCount"></span>
                        <button id="comment-btn" class="inReview commentBtn" data-count="0">Comment</button>
                        <span class="commentCount"></span>
                    </div>
                    <hr>
                  </div>
                  <div class="review">
                    <div class="review-header">
                      <img src="path/to/profile-picture.jpg" alt="프로필 사진"> <button class="reportBtn">report</button>
                      <p class="nickname">사용자 닉네임</p>
                      <p class="date">2023년 3월 17일</p>
                      <div class="rating">
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star empty"></span>
                        <span class="star empty"></span>
                      </div>
                    </div>
                    <p class="content">열 번째 리뷰</p>
                    <div class="actions">
                        <button class="inReview likeBtn" data-count="0">Like</button>
                        <span class="likeCount"></span>
                        <button class="inReview dislikeBtn" data-count="0">Dislike</button>
                        <span class="dislikeCount"></span>
                        <button id="comment-btn" class="inReview commentBtn" data-count="0">Comment</button>
                        <span class="commentCount"></span>
                    </div>
                    <hr>
                  </div>
                  <div class="review">
                    <div class="review-header">
                      <img src="path/to/profile-picture.jpg" alt="프로필 사진"> <button class="reportBtn">report</button>
                      <p class="nickname">사용자 닉네임</p>
              
                      <p class="date">2023년 3월 16일</p>
                      <div class="rating">
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star half"></span>
                        <span class="star empty"></span>
                        <span class="star empty"></span>
                      </div>
                    </div>
                    <p class="content">열한 번째 리뷰</p>
                    <div class="actions">
                        <button class="inReview likeBtn" data-count="0">Like</button>
                        <span class="likeCount"></span>
                        <button class="inReview dislikeBtn" data-count="0">Dislike</button>
                        <span class="dislikeCount"></span>
                        <button class="inReview commentBtn" data-count="0">Comment</button>
                        <span class="commentCount"></span>
                    </div> 
                    <hr>
                  </div>
                  <div class="review">
                    <div class="review-header">
                      <img src="path/to/profile-picture.jpg" alt="프로필 사진"><button class="reportBtn">report</button>
                      <p class="nickname">사용자 닉네임</p>
  
                      <p class="date">2023년 3월 15일</p>
                      <div class="rating">
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star full"></span>
                        <span class="star empty"></span>
                      </div>
                    </div>
                    <p class="content">열두 번째 리뷰 </p>
                    <div class="actions">
                        <button class="inReview likeBtn" data-count="0">Like</button>
                        <span class="likeCount"></span>
                        <button class="inReview dislikeBtn" data-count="0">Dislike</button>
                        <span class="dislikeCount"></span>
                        <button class="inReview commentBtn" data-count="0">Comment</button>
                        <span class="commentCount"></span>
                      </div> 
                    <hr>
                  </div>
              </div>

              <div id="showMore">
                <button>Show More</button>
                </form>
              </div> 
              </c:forEach>       
        </div>

      </div>
      <%@include file="/WEB-INF/views/common/footer.jsp" %>
            
</div>
</body>
</html>