<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/board/productPage-style.css">
<script defer src="/resources/js/manage_review-script.js"></script>
</head>
<body>

<div id="wrap">

	<%@ include file="/WEB-INF/views/common/header.jsp" %>

    <div id="childMiddleDiv">

        <div class="inChildMiddle" id="inChildMiddle1">
          <div id="categoryFilter">
            <h3>Filters</h3>
            <form action="/board/list" method="post">
              <fieldset>
                <legend>Category</legend>
                <input type="checkbox" id="category_men" name="category" value="men">
                <label for="category_men">Man</label><br><br>
                <input type="checkbox" id="category_women" name="category" value="women">
                <label for="category_women">Woman</label><br><br>
                <input type="checkbox" id="category_kids" name="category" value="kids">
                <label for="category_kids">Children</label><br><br>
                <input type="checkbox" id="category_shoes" name="category" value="shoes">
                <label for="category_shoes">Unisex</label><br><br>
                <input type="checkbox" id="category_accessories" name="category" value="accessories">
                <label for="category_accessories">Accesaries</label><br>
              </fieldset>
              <fieldset>
                <legend>rating</legend>
                <input type="checkbox" id="score_any" name="score" value="6">
                <label for="score_3">any</label><br><br>
                <input type="checkbox" id="score_1" name="score" value="1">
                <label for="score_4">★1+</label><br><br>
                <input type="checkbox" id="score_2" name="score" value="2">
                <label for="score_5">★2+</label><br><br>
                <input type="checkbox" id="score_3" name="score" value="3">
                <label for="score_3">★3+</label><br><br>
                <input type="checkbox" id="score_4" name="score" value="4">
                <label for="score_4">★4+</label><br><br>
                <input type="checkbox" id="score_5" name="score" value="5">
                <label for="score_5">★5</label><br>
              </fieldset>
              <fieldset>
                <legend>Others</legend>
                <input type="radio" id="sort_review_count" name="sort" value="review_count">
                <label for="sort_review_count">Highest number of reviews</label><br><br>
                <input type="radio" id="sort_recent" name="sort" value="recent">
                <label for="sort_recent">Most recent reviews</label><br><br>
                <input type="radio" id="sort_writer_grade" name="sort" value="writer_grade">
                <label for="sort_writer_grade">Reviewer's membership grade</label><br>
                <input type="text" name="ctSearchBar" placeholder="Enter.."><input type="button" class="searchButton" name="ctSearch" value="SEARCH">
              </fieldset>
            </form>
          </div>
        </div>

        <div class="inChildMiddle" id="inChildMiddle2">

		
		

            <div class="review-container">
                <div class="review">
                	
                <!-- <semi:forEach items="${boardList}" var="blist"> -->
                  <div class="review-header">
                    <img src="/resources/img/womencloth.jfif" alt="상품 사진"> 
                  </div>
                  <div class="reviewContent">
                    <h3 class="nickname">&nbsp;<!-- ${boardList.productNo } --></h3>
                    <div id="totalReviews" >
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
                    <div id="totalReviewCount">&nbsp;&nbsp;<!-- ${pageVo.listCount} --> reviews</div>
                </div>
        
                  <div class="updown">
                    <div class="goodbox">
                        <div class="good"><img src="/resources/img/good.png" class="good"></div>
                        <div class="goodnum"><h3><!-- ${blist.isLike} --></h3></div>
                    </div>
                    <div class="badbox">
                        <div class="bad"><img src="/resources/img/bad.png" class="bad"></div>
                        <div class="badnum"><h3><!-- ${blist.isUnlike} --></h3></div>
                    </div>
                </div>
                
                </div>
                <div class="review">
                  <div class="review-header">
                    <img src="/resources/img/mancloth.jfif" alt="상품 사진"> 
                  </div>
                  <div>
                    <h3 class="nickname">쳌쳌난방</h3>
                    <div id="totalReviews" >
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
                    <div id="totalReviewCount">&nbsp;&nbsp;4.0 & 999reviews</div>
                </div>
                <p class="content">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대표 리뷰 sadfnjkdsnafjkdnsajfndsjafnjkdsanfjkdsnafjdsanjfndsafnsdajfk
                </p>
                </div>
                <div class="review">
                  <div class="review-header">
                    <img src="/resources/img/babycloth.jfif" alt="상품 사진"> 
                  </div>
                  <div>
                    <h3 class="nickname">애기애기옷</h3>
                    <div id="totalReviews" >
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
                    <div id="totalReviewCount">&nbsp;&nbsp;4.0 & 999reviews</div>
                </div>
                <p class="content">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대표 리뷰 sadfnjkdsnafjkdnsajfndsjafnjkdsanfjkdsnafjdsanjfndsafnsdajfk
                </p>
                </div>
                <div class="review">
                  <div class="review-header">
                    <img src="/resources/img/acc.jfif" alt="상품 사진"> 
                  </div>
                  <div>
                    <h3 class="nickname">중국산티아라</h3>
                    <div id="totalReviews" >
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
                    <div id="totalReviewCount">&nbsp;&nbsp;4.0 & 999reviews</div>
                </div>
                <p class="content">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대표 리뷰 sadfnjkdsnafjkdnsajfndsjafnjkdsanfjkdsnafjdsanjfndsafnsdajfk
                </p>
                </div>
                <div class="review">
                  <div class="review-header">
                    <img src="/resources/img/babycloth.jfif" alt="상품 사진"> 
                  </div>
                  <div>
                    <h3 class="nickname">애기애기옷</h3>
                    <div id="totalReviews" >
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
                    <div id="totalReviewCount">&nbsp;&nbsp;4.0 & 999reviews</div>
                </div>
                <p class="content">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대표 리뷰 sadfnjkdsnafjkdnsajfndsjafnjkdsanfjkdsnafjdsanjfndsafnsdajfk
                </p>
                </div>
              </div>

              <div id="showMore">
                <input type="button" value="showMore">
              </div>
            </div>
            
             <!-- </semi:forEach> -->
            
            <div class="inChildMiddle" id="inChildMiddle3">

            </div>
    </div>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</div>
</body>
</html>