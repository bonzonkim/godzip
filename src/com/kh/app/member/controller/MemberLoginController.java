package com.kh.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.member.service.MemberService;
import com.kh.app.member.vo.MemberVo;

@WebServlet("/member/login")
public class MemberLoginController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/login.jsp").forward(req, resp);
	}
	
	//로그인
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 꺼내기
		String memberId = req.getParameter("memberId");
		String memberPwd = req.getParameter("memberPwd");
		
		//데이터 뭉치기
		MemberVo vo = new MemberVo();
		vo.setId(memberId);
		vo.setPwd(memberPwd);
		
		//서비스 호출
		MemberVo loginMember = null;
		try {
			MemberService service =  new MemberService();
			loginMember = service.login(vo);
		} catch (Exception e) {
			System.out.println("[ERROR]로그인중 예외 발생..");
			e.printStackTrace();
		}
		
		//화면
		if(loginMember != null) {
			req.getSession().setAttribute("loginMember", loginMember);
			resp.sendRedirect("/");
		}else {
			req.getSession().setAttribute("alertMsg", "로그인실패!! 아이디와 비밀번호를 확인하세요.");
			resp.sendRedirect("/");
			
		}
		
//		if(loginMember != null) {
//		    req.getSession().setAttribute("loginMember", loginMember);
//		    req.getSession().setAttribute("loginNick", loginMember.getNick()); // 추가
//		    resp.sendRedirect("/");
//		} else {
//		    req.getSession().setAttribute("alertMsg", "로그인실패!! 아이디와 비밀번호를 확인하세요.");
//		    resp.sendRedirect("/");
//		}

		
	}
	
}

