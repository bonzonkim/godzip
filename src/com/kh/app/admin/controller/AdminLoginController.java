package com.kh.app.admin.controller;

import com.kh.app.admin.service.AdminService;
import com.kh.app.admin.vo.AdminVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/aintnobodycantaccesshere")
public class AdminLoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/admin/adminLogin.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String adminId = req.getParameter("adminId");
        String adminPwd = req.getParameter("adminPwd");

        AdminVo adminInfo = new AdminVo();

        adminInfo.setAdminId(adminId);
        adminInfo.setAdminPwd(adminPwd);

        AdminVo adminLog = null;
        try {
            AdminService service = new AdminService();
            adminLog = service.adminLogin(adminInfo);
        } catch (Exception e) {
            System.out.println("[ERROR] 관리자 로그인 중 예외 발생");
            e.printStackTrace();
        }

        if (adminLog != null) {
            req.getSession().setAttribute("adminLog", adminLog);
            resp.sendRedirect("/");
        } else {
            req.getSession().setAttribute("alertMsg", "아이디와 비밀번호를 확인하세요");
            resp.sendRedirect("/admin/aintnobodycantaccesshere");
        }





    }
}
