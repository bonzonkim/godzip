package com.kh.app.admin.controller;

import com.kh.app.admin.service.AdminService;
import com.kh.app.admin.vo.AdminMemberManageVo;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.util.page.PaginationVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/control")
public class AdminAdministrationController extends HttpServlet {
    private AdminService service = new AdminService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            int currentPage = 1;//Integer.parseInt(req.getParameter("page"));
            int totalArticle = service.totalArticle();
            int pageLimit = 5;
            int boardLimit = 5;


//            PaginationVo paginationVo = new PaginationVo(totalArticle,currentPage,pageLimit,boardLimit);

            List<AdminMemberManageVo> memberManageVo = service.selectList();
            req.setAttribute("memberManageVo", memberManageVo);
//            req.setAttribute("paginationVo", paginationVo);
            req.getRequestDispatcher("/WEB-INF/views/admin/adminAdministration.jsp").forward(req, resp);
        } catch (Exception e) {
            System.out.println("{ERROR} 회원관리 리스트 불러오다가 에러남 ㅠ");
            e.printStackTrace();
            req.setAttribute("errorMsg","회원관리 리스트 불러오기 실패");
            req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
