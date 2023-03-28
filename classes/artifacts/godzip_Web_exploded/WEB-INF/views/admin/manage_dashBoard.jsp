<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/admin/manage_dashBoard-style copy.css">
<script defer src="/resources/js/manage_review-script.js"></script>
<title>Insert title here</title>
</head>
<body>

	<div id="wrap">
			<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
		<div class="review"><h1>Review</h1></div>
		<div class="reviewTot">
		    <div id="manageButton">
		        <div id="upload"><button><span>Upload</span></button></div>
		        <div id="delete"><button><span>Delete</span></button></div>
		    </div>
		    
		    <div class="reviewList">
		        <h3>Q&A</h3>
		        <div class="list Top">
		            <div id="check checkTot"><input type="checkbox"></div>
		            <div class="reviewNum tnum"><h5>NO</h5></div>
		            <div class="reviewTitle ttitle"><h5>TITLE</h5></div>
		            <div class="reviewWriter twriter"><h5>WRITER</h5></div>
		            <div class="reviewDate tdate"><h5>DATE</h5></div>
		        </div>
		        <div class="list li l5">
		            <div id="check check20"><input type="checkbox"></div>
		            <div class="reviewNum num n20"><h5>5</h5></div>
		            <div id="reviewTitle title t20"><a href=""><h5>후기입니다 ~~~</h5></a></div>
		            <div class="reviewWriter writer w20"><h5>김본전</h5></div>
		            <div class="reviewDate date d20"><h5>2023.03.17</h5></div>
		        </div>
		        <div class="list li l4">
		            <div id="check check19"><input type="checkbox"></div>
		            <div class="reviewNum num n19"><h5>4</h5></div>
		            <div id="reviewTitle title t19"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w19"><h5></h5></div>
		            <div class="reviewDate date d19"><h5>2023.03.17</h5></div>
		        </div>
		        <div class="list li l3">
		            <div id="check check18"><input type="checkbox"></div>
		            <div class="reviewNum num n18"><h5>3</h5></div>
		            <div id="reviewTitle title t18"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w18"><h5></h5></div>
		            <div class="reviewDate date d18"><h5></h5></div>
		        </div>
		        <div class="list li l2">
		            <div id="check check17"><input type="checkbox"></div>
		            <div class="reviewNum num n17"><h5>2</h5></div>
		            <div id="reviewTitle title t17"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w17"><h5></h5></div>
		            <div class="reviewDate date d17"><h5></h5></div>
		        </div>
		        <div class="list li l1">
		            <div id="check check16"><input type="checkbox"></div>
		            <div class="reviewNum num n16"><h5>1</h5></div>
		            <div id="reviewTitle title t16"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w16"><h5></h5></div>
		            <div class="reviewDate date d16"><h5></h5></div>
		        </div>
		    </div>
		
		
		    <!-- 공지사항 -->
		    <div class="reviewList"> 
		        <h3>공지사항</h3>
		        <div class="list Top">
		            <div id="check checkTot"><input type="checkbox"></div>
		            <div class="reviewNum tnum"><h5>NO</h5></div>
		            <div class="reviewTitle ttitle"><h5>TITLE</h5></div>
		            <div class="reviewWriter twriter"><h5>WRITER</h5></div>
		            <div class="reviewDate tdate"><h5>DATE</h5></div>
		        </div>
		        <div class="list li l5">
		            <div id="check check20"><input type="checkbox"></div>
		            <div class="reviewNum num n20"><h5>5</h5></div>
		            <div id="reviewTitle title t20"><a href=""><h5>후기입니다 ~~~</h5></a></div>
		            <div class="reviewWriter writer w20"><h5>김본전</h5></div>
		            <div class="reviewDate date d20"><h5>2023.03.17</h5></div>
		        </div>
		        <div class="list li l4">
		            <div id="check check19"><input type="checkbox"></div>
		            <div class="reviewNum num n19"><h5>4</h5></div>
		            <div id="reviewTitle title t19"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w19"><h5></h5></div>
		            <div class="reviewDate date d19"><h5>2023.03.17</h5></div>
		        </div>
		        <div class="list li l3">
		            <div id="check check18"><input type="checkbox"></div>
		            <div class="reviewNum num n18"><h5>3</h5></div>
		            <div id="reviewTitle title t18"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w18"><h5></h5></div>
		            <div class="reviewDate date d18"><h5></h5></div>
		        </div>
		        <div class="list li l2">
		            <div id="check check17"><input type="checkbox"></div>
		            <div class="reviewNum num n17"><h5>2</h5></div>
		            <div id="reviewTitle title t17"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w17"><h5></h5></div>
		            <div class="reviewDate date d17"><h5></h5></div>
		        </div>
		        <div class="list li l1">
		            <div id="check check16"><input type="checkbox"></div>
		            <div class="reviewNum num n16"><h5>1</h5></div>
		            <div id="reviewTitle title t16"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w16"><h5></h5></div>
		            <div class="reviewDate date d16"><h5></h5></div>
		        </div>
		    </div>
		
		
		    <!-- FAQ -->
		    <div class="reviewList">
		        <h3>FAQ</h3>
		        <div class="list Top">
		            <div id="check checkTot"><input type="checkbox"></div>
		            <div class="reviewNum tnum"><h5>NO</h5></div>
		            <div class="reviewTitle ttitle"><h5>TITLE</h5></div>
		            <div class="reviewWriter twriter"><h5>WRITER</h5></div>
		            <div class="reviewDate tdate"><h5>DATE</h5></div>
		        </div>
		        <div class="list li l5">
		            <div id="check check20"><input type="checkbox"></div>
		            <div class="reviewNum num n20"><h5>5</h5></div>
		            <div id="reviewTitle title t20"><a href=""><h5>후기입니다 ~~~</h5></a></div>
		            <div class="reviewWriter writer w20"><h5>김본전</h5></div>
		            <div class="reviewDate date d20"><h5>2023.03.17</h5></div>
		        </div>
		        <div class="list li l4">
		            <div id="check check19"><input type="checkbox"></div>
		            <div class="reviewNum num n19"><h5>4</h5></div>
		            <div id="reviewTitle title t19"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w19"><h5></h5></div>
		            <div class="reviewDate date d19"><h5>2023.03.17</h5></div>
		        </div>
		        <div class="list li l3">
		            <div id="check check18"><input type="checkbox"></div>
		            <div class="reviewNum num n18"><h5>3</h5></div>
		            <div id="reviewTitle title t18"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w18"><h5></h5></div>
		            <div class="reviewDate date d18"><h5></h5></div>
		        </div>
		        <div class="list li l2">
		            <div id="check check17"><input type="checkbox"></div>
		            <div class="reviewNum num n17"><h5>2</h5></div>
		            <div id="reviewTitle title t17"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w17"><h5></h5></div>
		            <div class="reviewDate date d17"><h5></h5></div>
		        </div>
		        <div class="list li l1">
		            <div id="check check16"><input type="checkbox"></div>
		            <div class="reviewNum num n16"><h5>1</h5></div>
		            <div id="reviewTitle title t16"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w16"><h5></h5></div>
		            <div class="reviewDate date d16"><h5></h5></div>
		        </div>
		    </div>
		
		
		<!-- 보도&채용 -->
		    <div class="reviewList">
		        <h3>보도&채용</h3>
		        <div class="list Top">
		            <div id="check checkTot"><input type="checkbox"></div>
		            <div class="reviewNum tnum"><h5>NO</h5></div>
		            <div class="reviewTitle ttitle"><h5>TITLE</h5></div>
		            <div class="reviewWriter twriter"><h5>WRITER</h5></div>
		            <div class="reviewDate tdate"><h5>DATE</h5></div>
		        </div>
		        <div class="list li l5">
		            <div id="check check20"><input type="checkbox"></div>
		            <div class="reviewNum num n20"><h5>5</h5></div>
		            <div id="reviewTitle title t20"><a href=""><h5>후기입니다 ~~~</h5></a></div>
		            <div class="reviewWriter writer w20"><h5>김본전</h5></div>
		            <div class="reviewDate date d20"><h5>2023.03.17</h5></div>
		        </div>
		        <div class="list li l4">
		            <div id="check check19"><input type="checkbox"></div>
		            <div class="reviewNum num n19"><h5>4</h5></div>
		            <div id="reviewTitle title t19"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w19"><h5></h5></div>
		            <div class="reviewDate date d19"><h5>2023.03.17</h5></div>
		        </div>
		        <div class="list li l3">
		            <div id="check check18"><input type="checkbox"></div>
		            <div class="reviewNum num n18"><h5>3</h5></div>
		            <div id="reviewTitle title t18"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w18"><h5></h5></div>
		            <div class="reviewDate date d18"><h5></h5></div>
		        </div>
		        <div class="list li l2">
		            <div id="check check17"><input type="checkbox"></div>
		            <div class="reviewNum num n17"><h5>2</h5></div>
		            <div id="reviewTitle title t17"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w17"><h5></h5></div>
		            <div class="reviewDate date d17"><h5></h5></div>
		        </div>
		        <div class="list li l1">
		            <div id="check check16"><input type="checkbox"></div>
		            <div class="reviewNum num n16"><h5>1</h5></div>
		            <div id="reviewTitle title t16"><a href=""><h5></h5></a></div>
		            <div class="reviewWriter writer w16"><h5></h5></div>
		            <div class="reviewDate date d16"><h5></h5></div>
		        </div>
		    </div>
		
		
		
		
		    
		
		    
		    <div class="listBox">
		        <div class="listButton">
		            <div class="listnum leftButton"><a href=""><img src="/resources/img/lessthan.png"></a></div>
		            <div class="listnum list1"><a href=""><h5>1</h5></a></div>
		            <div class="listnum list2"><a href=""><h5>2</h5></a></div>
		            <div class="listnum list3"><a href=""><h5>3</h5></a></div>
		            <div class="listnum list4"><a href=""><h5>4</h5></a></div>
		            <div class="listnum list5"><a href=""><h5>5</h5></a></div>
		            <div class="listnum rightButton"><a href=""><img src="/resources/img/greaterthan_thick.png"></a></div>
		        </div>
		    </div>
		    <div class="searchBox">
		        <div class="searchBottom">
		            <div class="searchList">
		                <select>
		                    <option>통합검색</option>
		                    <option>Q&A</option>
		                    <option>공지사항</option>
		                    <option>FAQ</option>
		                    <option>보도&채용</option>
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