package com.kh.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.member.service.MemberService;
import com.kh.app.member.vo.MemberVo;

@WebServlet("/member/edit")
public class MemberEditController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberVo loginMember = (MemberVo)req.getSession().getAttribute("loginMember");
		if(loginMember != null) {
			req.getRequestDispatcher("/WEB-INF/views/member/profile.jsp").forward(req, resp);
		}else {
			req.getSession().setAttribute("alertMsg", "로그인 후 이용하세요 !!!");
			resp.sendRedirect("/");
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String memberId = req.getParameter("memberId");
		String memberPwd = req.getParameter("memberPwd");
		String memberPwd2 = req.getParameter("memberPwd2");
		String memberEmail = req.getParameter("memberEmail");
		String memberNick = req.getParameter("memberNick");
		String CountryCode = req.getParameter("CounrtyCode");
		String phone = req.getParameter("phone");
		String year = req.getParameter("year");
		String userQuestion = req.getParameter("userQuestion");
		String userAnswer = req.getParameter("userAnswer");
		String height = req.getParameter("height");
		String weight = req.getParameter("weight");
		String nation = req.getParameter("nation");
		
		
		MemberVo vo = new MemberVo();
		vo.setId(memberId);
		vo.setPwd(memberPwd);
		vo.setEmail(memberEmail);
		vo.setNick(memberNick);
		vo.setNationCode(CountryCode);
		vo.setTel(phone);
		vo.setDob(year);
		vo.setSecNo(userQuestion);
		vo.setSecQuizAnswer(userAnswer);
		vo.setHeight(height);
		vo.setWeight(weight);
		vo.setNationCode(nation);
		
		
		int result = 0;
		try {
			MemberService service = new MemberService();
			result = service.edit(vo);
		} catch (Exception e) {
			System.out.println("[ERROR] 회원 정보 수정 중 예외 발생");
			e.printStackTrace();
		}
		
		if(result == 1) {
			req.setAttribute("alertMsg", "회원 정보 수정 성공 ~");
			req.getRequestDispatcher("/WEB-INF/views/member/mypage.jsp").forward(req, resp);
		}else {
			req.getSession().setAttribute("alertMsg", "회원 정보 수정 실패ㅠㅠ");
			resp.sendRedirect("/");
		}
	}
	
}
