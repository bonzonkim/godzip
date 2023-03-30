package com.kh.app.faq.vo;

public class FaqVo {
	
	private String no;
	private String title;
	private String content;
	private String adminNo;
	private String deleteYn;
	private String hit;
	private String enrollDate;
	private String changeName;
	public synchronized final String getNo() {
		return no;
	}
	public synchronized final void setNo(String no) {
		this.no = no;
	}
	public FaqVo(String no, String title, String content, String adminNo, String deleteYn, String hit,
			String enrollDate, String changeName) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.adminNo = adminNo;
		this.deleteYn = deleteYn;
		this.hit = hit;
		this.enrollDate = enrollDate;
		this.changeName = changeName;
	}
	public synchronized final String getChangeName() {
		return changeName;
	}
	public synchronized final void setChangeName(String changeName) {
		this.changeName = changeName;
	}
	public synchronized final String getTitle() {
		return title;
	}
	public synchronized final void setTitle(String title) {
		this.title = title;
	}
	public synchronized final String getContent() {
		return content;
	}
	public synchronized final void setContent(String content) {
		this.content = content;
	}
	public synchronized final String getAdminNo() {
		return adminNo;
	}
	public synchronized final void setAdminNo(String adminNo) {
		this.adminNo = adminNo;
	}
	public synchronized final String getDeleteYn() {
		return deleteYn;
	}
	public synchronized final void setDeleteYn(String deleteYn) {
		this.deleteYn = deleteYn;
	}
	public synchronized final String getHit() {
		return hit;
	}
	public synchronized final void setHit(String hit) {
		this.hit = hit;
	}
	public synchronized final String getEnrollDate() {
		return enrollDate;
	}
	public synchronized final void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}
	@Override
	public String toString() {
		return "faqVo [no=" + no + ", title=" + title + ", content=" + content + ", adminNo=" + adminNo + ", deleteYn="
				+ deleteYn + ", hit=" + hit + ", enrollDate=" + enrollDate + "]";
	}
	public FaqVo(String no, String title, String content, String adminNo, String deleteYn, String hit,
			String enrollDate) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.adminNo = adminNo;
		this.deleteYn = deleteYn;
		this.hit = hit;
		this.enrollDate = enrollDate;
	}
	public FaqVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	
	
	
	
}