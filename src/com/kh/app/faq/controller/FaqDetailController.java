package com.kh.app.faq.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.board.service.BoardService;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.faq.service.FaqService;
import com.kh.app.faq.vo.FaqVo;

@WebServlet("/faq/detail")
public class FaqDetailController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            String no = req.getParameter("no");
            FaqService faqService = new FaqService();
            FaqVo fVo =faqService.detail(no);
            System.out.println(fVo);
            req.setAttribute("fVo",fVo);
            req.getRequestDispatcher("/WEB-INF/views/more/faqDetail.jsp").forward(req,resp);
        } catch (Exception e) {
            System.out.println("[error]게시글 상세조회 에러");
            e.printStackTrace();
        }
		
	}
}
