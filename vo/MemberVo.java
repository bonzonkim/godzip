package com.kh.app.member.vo;

public class MemberVo {
	
	
	private String no;
	private String gradeNo;
	private String id;
	private String pwd;
	private String nick;
	private String email;
	private String enrollDate;
	private String quitYn;
	private String isBlockedYn;
	private String tel;
	private String secNo;
	private String secQuizAnswer;
	private String lastVisit;
	private String totalVisit;
	private String dob;
	private String loginTypeNo;
	
	private String height;
	private String weight;
	
	private String nationCode;

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getGradeNo() {
		return gradeNo;
	}

	public void setGradeNo(String gradeNo) {
		this.gradeNo = gradeNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getQuitYn() {
		return quitYn;
	}

	public void setQuitYn(String quitYn) {
		this.quitYn = quitYn;
	}

	public String getIsBlockedYn() {
		return isBlockedYn;
	}

	public void setIsBlockedYn(String isBlockedYn) {
		this.isBlockedYn = isBlockedYn;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getSecNo() {
		return secNo;
	}

	public void setSecNo(String secNo) {
		this.secNo = secNo;
	}

	public String getSecQuizAnswer() {
		return secQuizAnswer;
	}

	public void setSecQuizAnswer(String secQuizAnswer) {
		this.secQuizAnswer = secQuizAnswer;
	}

	public String getLastVisit() {
		return lastVisit;
	}

	public void setLastVisit(String lastVisit) {
		this.lastVisit = lastVisit;
	}

	public String getTotalVisit() {
		return totalVisit;
	}

	public void setTotalVisit(String totalVisit) {
		this.totalVisit = totalVisit;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getLoginTypeNo() {
		return loginTypeNo;
	}

	public void setLoginTypeNo(String loginTypeNo) {
		this.loginTypeNo = loginTypeNo;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getNationCode() {
		return nationCode;
	}

	public void setNationCode(String nationCode) {
		this.nationCode = nationCode;
	}

	@Override
	public String toString() {
		return "MemberVo [no=" + no + ", gradeNo=" + gradeNo + ", id=" + id + ", pwd=" + pwd + ", nick=" + nick
				+ ", email=" + email + ", enrollDate=" + enrollDate + ", quitYn=" + quitYn + ", isBlockedYn="
				+ isBlockedYn + ", tel=" + tel + ", secNo=" + secNo + ", secQuizAnswer=" + secQuizAnswer
				+ ", lastVisit=" + lastVisit + ", totalVisit=" + totalVisit + ", dob=" + dob + ", loginTypeNo="
				+ loginTypeNo + ", height=" + height + ", weight=" + weight + ", nationCode=" + nationCode + "]";
	}

	public MemberVo(String no, String gradeNo, String id, String pwd, String nick, String email, String enrollDate,
			String quitYn, String isBlockedYn, String tel, String secNo, String secQuizAnswer, String lastVisit,
			String totalVisit, String dob, String loginTypeNo, String height, String weight, String nationCode) {
		super();
		this.no = no;
		this.gradeNo = gradeNo;
		this.id = id;
		this.pwd = pwd;
		this.nick = nick;
		this.email = email;
		this.enrollDate = enrollDate;
		this.quitYn = quitYn;
		this.isBlockedYn = isBlockedYn;
		this.tel = tel;
		this.secNo = secNo;
		this.secQuizAnswer = secQuizAnswer;
		this.lastVisit = lastVisit;
		this.totalVisit = totalVisit;
		this.dob = dob;
		this.loginTypeNo = loginTypeNo;
		this.height = height;
		this.weight = weight;
		this.nationCode = nationCode;
	}

	public MemberVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
