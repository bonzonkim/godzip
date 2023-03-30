package com.kh.app.board.controller;

import com.kh.app.board.service.BoardService;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.util.page.PaginationVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/board/list")
public class BoardListController extends HttpServlet {
    private BoardService service = new BoardService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int currentPage = Integer.parseInt(req.getParameter("page"));
            int totalArticle = service.totalArticle();
            int pageLimit = 5;
            int boardLimit = 5;


            PaginationVo paginationVo = new PaginationVo(totalArticle,currentPage,pageLimit,boardLimit);

            List<BoardVo> boardList = service.selectList(paginationVo);
            req.setAttribute("boardList", boardList);
            req.setAttribute("paginationVo", paginationVo);
            req.getRequestDispatcher("/WEB-INF/views/board/list.jsp").forward(req, resp);

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
