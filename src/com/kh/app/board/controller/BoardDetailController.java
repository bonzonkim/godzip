package com.kh.app.board.controller;

import com.kh.app.board.service.BoardService;
import com.kh.app.board.vo.BoardVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/board/detail")
public class BoardDetailController extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String no = req.getParameter("no");
            BoardService service = new BoardService();
            BoardVo vo = service.detail(no);
            System.out.println(vo);
            req.setAttribute("boardVo",vo);
            req.getRequestDispatcher("/WEB-INF/views/board/detail.jsp").forward(req,resp);
        } catch (Exception e) {
            System.out.println("[error]게시글 상세조회 에러");
            e.printStackTrace();
        }
    }
}
