<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/member/profile-style.css">
<script defer src="/resources/js/profile.js"></script>
<title>Insert title here</title>
</head>
<body>

    <div id="wrap">
        <%@ include file="/WEB-INF/views/common/header.jsp" %>

        <div class="bodyTot">
            <div class="mypageedit"><h1>PROFILE</h1></div>
            <div class="tot">
                <form action="">
                    <div id="edit">
                        <div id="idbox">
                            <div id="id"><h4>아이디</h4></div>
                            <div id="idinput"><input type="text" name="memberId" readonly></div>
                        </div>
                        <div id="pwdbox">
                            <div id="pwd"><h4>비밀번호</h4></div>
                            <div id="pwdinput"><input type="password" name="memberPwd" required></div>
                            <div></div>
                            <div id="pwdValid"><h5>최소 1개의 문자 + 최소 1개의 특수기호 + 숫자 (6~12자리)</h5></div>
                        </div>
                        <div id="pwd2box">
                            <div id="pwd2"><h4>비밀번호 확인</h4></div>
                            <div><input type="password" name="memberPwd2" required></div>
                        </div>
                        <div id="namebox">
                            <div class="name"><h4>이름</h4></div>
                            <div class="nameinput"><input type="text" name="memberName" readonly></div>
                        </div>
                        <div id="emailbox">
                            <div class="email"><h4>이메일</h4></div>
                            <div class="emailinput"><input type="text" name="memberEmail" required></div>
                            <div></div>
                            <div id="emailValid"><h5></h5></div>
                        </div>
                        <div id="nickbox">
                            <div id="nick"><h4>닉네임</h4></div>
                            <div id="nickinput"><input type="text" name="memberNick" placeholder="영문자+숫자 (최대 10자리)" required></div>
                            <div></div>
                            <div><button onclick="check();">중복확인</button></div>
                        </div>
                        <div id="phonenumbox">
                            <div id="phonenum"><h4>전화번호</h4></div>
                            <div id="phonenuminput">
                                <select id="countryCode">
                                <option value="82">대한민국 (+82)</option>
                                <option value="1">미국 (+1)</option>
                                <option value="81">일본 (+81)</option>
                                <option value="86">중국 (+86)</option>
                                </select>
                            </div>
                            <div></div>
                            <div><input type="tel" id="phone" name="phone" required></div>
                        </div>
                        <div id="birthdaybox">
                            <div id="birthday"><h4>생년월일</h4></div>
                            <div id="birthdayYear">
                                <select id="year" class="dob" name="year"></select>
                            </div>
                            <div></div>
                            <div id="birthdayMD">
                                <div id="Month">
                                    <select id="month" class="dob" name="month"></select>
                                </div>
                                <div id="Day">
                                    <select id="day" class="dob" name="day"></select>
                                </div>
                            </div>
    
                        </div>
                        <div id="questionbox">
                            <div id="question"><h4>보안질문</h4></div>
                            <div id="questioninput"><input type="text" name="userQuestion" readonly></div>
                        </div>
                        <div id="answerbox">
                            <div id="answer"><h4>보안질문 답변</h4></div>
                            <div><input type="text" name="userAnswer" readonly></div>
                        </div>
                        <div id="heightbox">
                            <div id="height"><h4>키/Height(cm)</h4></div>
                            <div id="heightinput"><input type="number" name="height"></div>
                        </div>
                        <div id="weightbox">
                            <div id="weight"><h4>몸무게/Weight(kg)</h4></div>
                            <div id="weightinput"><input type="number" name="weight"></div>
                        </div>
                        <div id="nationbox">
                            <div id="nation"><h4>국적</h4></div>
                            <div id="nationinput"><input type="text" name="nation" readonly></div>
                        </div>
                    </div>
                    <div id="editButton">
                        <div id="editSubmit"><button>정보수정</button></div>
                        <div id="editCancel"><button>취소</button></div>
                    </div>
                </form>
            </div>
        </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    </div>
</body>
</html>