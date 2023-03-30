	alert("dd");


//이메일 형식 유효성 검사
const email = document.querySelector("input[name=memberEmail]");
const text = document.querySelector("#emailValid h5");

email.addEventListener("blur",()=>{
    const reg = /^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
    const emailCheck = email.value;
    const result = reg.test(emailCheck);

    if(result){
      email.style.border = "2px solid darkgreen";
    }else{
      text.innerText = "올바른 형식으로 입력해주세요 !";
      text.style.color = "red";
    }
  });



//비번 일치 여부 확인 & 유효성 검사
const pwd = document.querySelector("input[name=memberPwd]");
const pwd2 = document.querySelector("input[name=memberPwd2]");



//-유효성
pwd.addEventListener("blur",()=>{
  const pwdCheck = pwd.value;
  const reg = /^(?=.*[A-Za-z])(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,12}$/;  
  //최소 1개의 문자 및 최소 1개의 특수문자 포함한 6~12자리
  const result = reg.test(pwdCheck);
  const text = document.querySelector("#pwdValid h5");
  
  if(result){
    text.innerText = "통과 !";
    text.style.color = "darkgreen";
    pwd.setCustomValidity("");
  }else{
    text.innerText = "올바른 형식으로 입력해주세요 !";
    text.style.color = "red";
    pwd.setCustomValidity("올바른 비밀번호 형식이 아닙니다.");
  }
});

//-일치 여부
pwd2.addEventListener("blur",()=>{
  if(pwd.value == pwd2.value){
    pwd2.style.border = "2px solid darkgreen";
    pwd2.setCustomValidity("");
  }else{
    pwd2.style.border = "2px solid red";
    pwd2.setCustomValidity("비밀번호가 일치하지 않습니다.");
  }
});



//닉네임 형식 & 중복 검사
const nick = document.querySelector("input[name=memberNick");

nick.addEventListener("blur",()=>{
  const nickV = nick.value;
  const reg = /^[a-zA-Z0-9]{1,10}$/;
  const result = reg.test(nickV);

  if(result){
    nick.style.border = "2px solid darkgreen";
  }else{
    nick.style.border = "2px solid red";
    nick.value = "올바른 형식 아님";
  }
});