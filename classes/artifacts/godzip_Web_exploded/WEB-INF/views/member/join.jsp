<%@page import="java.sql.Connection"%>
<%@page import="com.kh.app.util.JDBCTemplate"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <link rel="stylesheet" href="/resources/css/member/joinStyle.css">
     <script defer src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
     <script type="text/javascript" defer src="/resources/js/joinscript.js">
     </script>
   </head>

<body>
<div id="wrap">
     <%@ include file="/WEB-INF/views/common/header.jsp" %>

<div id="middleDiv">
    <form action="/member/join" method="post" class="memberJoin" onsubmit="return validateForm()">
    <div id="table1Div">
        <table id="table1">
            <tr>
            <th colspan="3" id="title"><h2>회원가입</h2></th>
            </tr>
            <tr id= "imgInTable">
            <td>
         <img alt="로고사진" src="/resources/img/godzip_white_cropped.PNG" width="200px;" style="margin-left:80%;">
            </td>
            </tr>
            <tr>
            <td colspan="3" id="welcome">Welcome to join us, Start collecting reviews today!</td>
            </tr>
            <tr>
            <td colspan="3">
                *필수 입력 항목
            </td>
            </tr>
            <tr>
            <td colspan="3">
                <input type="text" name="memberId" id="memberId"  placeholder="ID/영소문자와 숫자로 구성된 6글자 이상" required>
            </td>
            </tr>
            <tr>
            <td colspan="3">
                <input type="password" name="memberPwd" id="memberPwd" placeholder="Password/최소 1개의 문자 포함한 6~12자리" required>
            </td>
            </tr>
            <tr>
            <td colspan="3">
                <input type="password" name="confirmMemberPwd" id="confirmMemberPwd" placeholder="Confirm Password" required>
            </td>
            </tr>
            <tr>
            <td colspan="3">
                <input type="email" name="memberEmail" id="memberEmail" placeholder="Email" required>
            </td>
            </tr>
            <tr>
            <td colspan="3">
                <input type="text" name="memberNick" id="memberNick" placeholder="Nick Name/영문, 숫자, 1~10글자" required>
            </td>
            </tr>
            <tr>
            <td colspan="3">
                <label for="phone">Phone:</label>
            </td>
            </tr>
            <tr>
            <td>
            <select name="countryCode">
                <option value="+82">대한민국 (+82)</option>
                <option value="+1">미국 (+1)</option>
                <option value="+81">일본 (+81)</option>
                <option value="+86">중국 (+86)</option>
                </select>

            </td>
            <td>
                <input type="tel" id="phone" name="phone" placeholder="Phone Number" required>
            </td>
            </tr>
            <tr>
            <td colspan="3">Birthday</td>
            </tr>
            <tr>
            <td>  
                <label for="year">Year:</label>
                <select id="year" class="dob" name="year">
                </select>
            </td>
            <td> 
                <label for="month">Month:</label>    
                <select id="month" class="dob" name="month"></select>
            </td>
            <td>
                <label for="day">Day:</label>     
                <select id="day" class="dob" name="day"></select>
            </td>
            </tr>
            <tr>
            <td colspan="3">비밀번호 찾기 질문입니다.</td> 
            </tr>
            <tr>
            <td>
                <label for="securityQuestion">Security Question:</label>
                 <select id="securityQuestion" name="securityQuestion" required="required">
                <option selected>Select Question</option>
                <option value="1">당신의 어머니의 성함은 무엇인가요?</option>
                <option value="2">당신의 가장 좋아하는 음식은 무엇인가요?</option>
                <option value="3">당신의 출신 초등학교 이름은 무엇인가요?</option>
                <option value="4">당신이 가장 좋아하는 동물은 무엇인가요?</option>
                <option value="5">당신이 가장 좋아하는 여행지는 어디인가요?</option>
                </select>
            </td>
            <td>
                <label for="securityAnswer">Security Answer:</label>
                <input type="text" id="securityAnswer" name="securityAnswer" placeholder="Answer" required="required">
            </td>
            </tr>
        </table>
    </div>
    <div id="table2Div">
        <table id="table2">
            <tr>
            <td colspan="3">
                *Optional
            </td>
            </tr>
            <tr>
            <td>키/Height(cm)</td>
            <td><input type="number" name="height" placeholder="ex. 178"></td>
            </tr>
            <tr>
            <td>몸무게/Weight(kg)</td>
            <td><input type="number" name="weight" placeholder="ex. 80"></td>
            </tr>
            <tr>
            <td>국적/nation</td>
            <td>
                <select name="nationality">
            <%
               Connection conn = JDBCTemplate.getConnection();
                PreparedStatement pstmt = conn.prepareStatement("SELECT NO,NAME_KR, NAME_EN FROM NATIONS");
                ResultSet rs = pstmt.executeQuery();
                while (rs.next()) {
                    String no = rs.getString("NO");
                    String nameKr = rs.getString("NAME_KR");
                    String nameEn = rs.getString("NAME_EN");
                    out.println("<option value='" + no + "'>"+nameKr+" " +nameEn + "</option>");
                }
                rs.close();
                pstmt.close();
                conn.close();
            %>
            </select>
            </td>
            </tr>
            <tr>
            <td id="robot" colspan="3">
                <script src="https://www.google.com/recaptcha/api.js" async defer></script>
                <script type="text/javascript">
                function onSubmit() {
                console.log('-- recaptcha 완료');
                }
                </script>
                <div class="captcha-submit">
                <div id="recaptcha" class="g-recaptcha" data-sitekey="6LfkiwYlAAAAAC2xzJMPLESbV0ldOSCk7_FX43zq" data-callback="onSubmit"></div>
                    <div class="submitbutton">
                    <input type="hidden" name="mv_powerbook">
                    <!-- <input style="width: 60%;" value="Send" type="submit" id="submit" class="form-submit" disabled /> -->
                </div>
                </div>
            </td>
            </tr>
            <tr>
            <td></td>
            <td colspan="3">
                <button class="button">
                <span class="button_lg">
                    <span class="button_sl"></span>
                    <span class="button_text">Join Now</span>
                </span>
            </button>
            </td>
            </tr>
        </table>
    </div>
    </form>
</div>

<!--common footer  -->
      <%@ include file="/WEB-INF/views/common/footer.jsp"%>

</div> <!--wrap-->


</body>
</html>

<script>
//출생년도 드롭다운 생성
var birthYear = document.querySelector('#year');
var currentYear = new Date().getFullYear();
for (var i = currentYear; i >= currentYear - 100; i--) {
  var option = document.createElement('option');
  option.value = i;
  option.innerHTML = i;
  birthYear.appendChild(option);
}

// 태어난 월 드롭다운 생성
var birthMonth = document.querySelector('#month');
for (var i = 1; i <= 12; i++) {
  var option = document.createElement('option');
  option.value = i;
  option.innerHTML = i;
  birthMonth.appendChild(option);
}

// 태어난 날짜 드롭다운 생성
var birthDay = document.querySelector('#day');
for (var i = 1; i <= 31; i++) {
  var option = document.createElement('option');
  option.value = i;
  option.innerHTML = i;
  birthDay.appendChild(option);
}

	// 국가 코드 선택 후 입력란에 포커스 주기
  document.querySelector("#countryCode").addEventListener("change", function() {
    document.querySelector("#phone").focus();
  });
  
  // 전화번호 형식 유효성 검사
  document.querySelector("#phone").addEventListener("input", function() {
    var phoneNumber = this.value.replace(/\D/g,'');
    if(phoneNumber.length > 9 && phoneNumber.length <= 11) {
      this.setCustomValidity("");
    } else {
      this.setCustomValidity("올바른 전화번호 형식이 아닙니다.");
    }
  });

  /*구글 회원가입화면이동 */
function signUpGoogle() {
	location.href = "#";
}

  

</script>