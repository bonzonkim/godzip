<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/board/reviewPageStyle.css">
<script defer src="/resoures/js/reviewPage.js"></script>
</head>
<body>

    <div id="wrap">
        <%@ include file="/WEB-INF/views/common/header.jsp" %>

        <div id="childMiddleDiv">

            <div id="inChildMiddle">
    
                <div id="productInfo" >
                    <img src="/resources/img/godzip_white_cropped.png" alt="상품사진" width="200px" height="200px">
                    <div id="productInfo-child">
                        <h1 class="productName">Godzip</h1>
                        <h2>구성품:조장1,형상1,디비1,이슈1,일정2</h2>
                            <div class="totalReviews" >
                                <div style="display: flex;" class="star-rating">
                                    <input type="radio" id="5-stars" name="rating" value="5" />
                                    <label for="5-stars" class="star">&#9733;</label>
                                    <input type="radio" id="4-stars" name="rating" value="4" />
                                    <label for="4-stars" class="star">&#9733;</label>
                                    <input type="radio" id="3-stars" name="rating" value="3" />
                                    <label for="3-stars" class="star">&#9733;</label>
                                    <input type="radio" id="2-stars" name="rating" value="2" />
                                    <label for="2-stars" class="star">&#9733;</label>
                                    <input type="radio" id="1-star" name="rating" value="1" />
                                    <label for="1-star" class="star">&#9733;</label>
                                </div>
                                <div id="totalReviewCount">&nbsp;&nbsp;4.0 & 999reviews</div>
                            </div>
                    </div>
                </div>
                <hr>
                <div id="reviewDetail">
    
                    <div id="reviewDetail-division1">
                        <h5>overall rating</h5>
                            <div class="totalReviews" >
                                <div style="display: flex;" class="star-rating">
                                    <input type="radio" id="5-stars" name="rating" value="5" />
                                    <label for="5-stars" class="star">&#9733;</label>
                                    <input type="radio" id="4-stars" name="rating" value="4" />
                                    <label for="4-stars" class="star">&#9733;</label>
                                    <input type="radio" id="3-stars" name="rating" value="3" />
                                    <label for="3-stars" class="star">&#9733;</label>
                                    <input type="radio" id="2-stars" name="rating" value="2" />
                                    <label for="2-stars" class="star">&#9733;</label>
                                    <input type="radio" id="1-star" name="rating" value="1" />
                                    <label for="1-star" class="star">&#9733;</label>
                                </div>
                            </div>
                            <div id="totalReviewCount">&nbsp;&nbsp;<h4>999reviews</h4></div>
                    </div>
    
                    <div id="reviewDetail-division2">
                        <div>5 stars <input type="range" name="5"></div>
                        <div>4 stars <input type="range" name="4"></div>
                        <div>3 stars <input type="range" name="3"></div>
                        <div>2 stars <input type="range" name="2"></div>
                        <div>1 stars <input type="range" name="1"></div>
                    </div>
                </div>
                <hr>
    
                <div id="buttonLine">
                    <button class="insideBtns"><a href="writeRev.html">write a review</a></button>
                    <button class="insideBtns" >review Filter</button> 
                </div>
    
                <div id="reviewContainer">
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
                      <p class="content">첫 번째 리뷰</p>
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
            </div>
    
          </div>
        </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    </div>

</body>
</html>