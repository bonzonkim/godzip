package com.kh.app.pressboard.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.page.vo.PageVo;
import com.kh.app.pressboard.service.PressBoardService;
import com.kh.app.pressboard.vo.PressBoardVo;




@WebServlet("/press/list")
public class PressListController extends HttpServlet{
	
	private PressBoardService pbs = new PressBoardService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		try {
			
		
		
		int currentPage = Integer.parseInt(req.getParameter("page"));
		int listCount = pbs.selectCount();
		int pageLimit = 5;
		int boardLimit = 5;
		
		PageVo pageVo = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		
		List<PressBoardVo> pressBoardList = pbs.selectList(pageVo);
		
		req.setAttribute("pressBoardList", pressBoardList);
		req.setAttribute("pageVo", pageVo);
		req.getRequestDispatcher("/WEB-INF/views/pressboard/pressList.jsp").forward(req, resp);
		
		
		} catch (Exception e) {
			System.out.println("[ERROR] 게시글 조회중 예외 발생 ...");
			e.printStackTrace();
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
