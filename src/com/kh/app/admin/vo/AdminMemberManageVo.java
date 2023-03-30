package com.kh.app.admin.vo;

public class AdminMemberManageVo {
    private String id;
    private String nick;
    private String enrollDate;

    @Override
    public String toString() {
        return "AdminMemberManageVo{" +
                "id='" + id + '\'' +
                ", nick='" + nick + '\'' +
                ", enrollDate='" + enrollDate + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getEnrollDate() {
        return enrollDate;
    }

    public void setEnrollDate(String enrollDate) {
        this.enrollDate = enrollDate;
    }

    public AdminMemberManageVo() {
    }

    public AdminMemberManageVo(String id, String nick, String enrollDate) {
        this.id = id;
        this.nick = nick;
        this.enrollDate = enrollDate;
    }
}
