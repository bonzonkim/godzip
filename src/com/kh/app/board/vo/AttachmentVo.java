package com.kh.app.board.vo;

public class AttachmentVo {
	
	private String no;
	private String originName;
	private String changeName;
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getOriginName() {
		return originName;
	}
	public void setOriginName(String originName) {
		this.originName = originName;
	}
	public String getChangeName() {
		return changeName;
	}
	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	@Override
	public String toString() {
		return "AttachmentVo [no=" + no + ", originName=" + originName + ", changeName=" + changeName + ", refBoardNo="
				+ "]";
	}
	public AttachmentVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AttachmentVo(String no, String originName, String changeName, String refBoardNo) {
		super();
		this.no = no;
		this.originName = originName;
		this.changeName = changeName;
	}
	
	

}
