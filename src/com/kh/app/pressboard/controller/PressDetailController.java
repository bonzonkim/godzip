package com.kh.app.pressboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.pressboard.service.PressBoardService;
import com.kh.app.pressboard.vo.PressBoardVo;


@WebServlet("/press/detail")
public class PressDetailController extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {
			String no = req.getParameter("no");
			
			PressBoardService pbs = new PressBoardService();
			PressBoardVo vo= pbs.selectOne(no);
			
			System.out.println(vo);
			
			req.setAttribute("pressBoardVo", vo);
			req.getRequestDispatcher("/WEB-INF/views/pressboard/pressDetail.jsp").forward(req, resp);
			
		} catch (Exception e) {
			System.out.println("게시글 상세조회 중 예외 발생...");
			e.printStackTrace();
		}
		
	}

}
