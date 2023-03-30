package com.kh.app.admin.vo;

public class AdminVo {
    private String no;
    private String adminId;
    private String adminPwd;

    @Override
    public String toString() {
        return "AdminVo{" +
                "no='" + no + '\'' +
                ", adminId='" + adminId + '\'' +
                ", adminPwd='" + adminPwd + '\'' +
                '}';
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getAdminPwd() {
        return adminPwd;
    }

    public void setAdminPwd(String adminPwd) {
        this.adminPwd = adminPwd;
    }

    public AdminVo() {
    }

    public AdminVo(String no, String adminId, String adminPwd) {
        this.no = no;
        this.adminId = adminId;
        this.adminPwd = adminPwd;
    }
}
