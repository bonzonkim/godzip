package com.kh.app.faq.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.board.service.BoardService;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.faq.service.FaqService;
import com.kh.app.faq.vo.FaqVo;
import com.kh.app.util.page.PaginationVo;

@WebServlet("/faq")
public class FaqController extends HttpServlet{

    private FaqService fService = new FaqService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
        	
        	String pageParam = req.getParameter("page");
        	int currentPage = pageParam == null ? 1 : Integer.parseInt(pageParam);
            int totalArticle = fService.totalArticle();
            int pageLimit = 5;
            int boardLimit = 5;


            PaginationVo paginationVo = new PaginationVo(totalArticle,currentPage,pageLimit,boardLimit);

            List<FaqVo> faqList = fService.faqList(paginationVo);
            req.setAttribute("faqList", faqList);
            req.setAttribute("paginationVo", paginationVo);
            req.getRequestDispatcher("/WEB-INF/views/more/faq.jsp").forward(req, resp);

        } catch (Exception e) {
            System.out.println("{ERROR} 게시글 조회 중 에러 발생");
            e.printStackTrace();
            req.setAttribute("errorMsg","게시글 조회 실패");
            req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}