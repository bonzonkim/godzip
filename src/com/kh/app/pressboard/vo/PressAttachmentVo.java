package com.kh.app.pressboard.vo;

public class PressAttachmentVo {
		
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
		return "PressAttachmentVo [no=" + no + ", originName=" + originName + ", changeName=" + changeName + "]";
	}
	public PressAttachmentVo(String no, String originName, String changeName) {
		super();
		this.no = no;
		this.originName = originName;
		this.changeName = changeName;
	}
	public PressAttachmentVo() {
		super();
	}
		
	


}
