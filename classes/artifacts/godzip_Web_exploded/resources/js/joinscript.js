// 출생년도 드롭다운 생성
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




