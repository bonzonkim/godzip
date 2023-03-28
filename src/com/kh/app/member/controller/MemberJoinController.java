package com.kh.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.member.service.MemberService;
import com.kh.app.member.vo.MemberVo;

@WebServlet("/member/join")
public class MemberJoinController extends HttpServlet{
	
	//회원가입(화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/join.jsp").forward(req, resp);
		
	}	
	//회원가입
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//인코딩
		req.setCharacterEncoding("UTF-8");
		
		//데이터 꺼내기 
		String memberId = req.getParameter("memberId");
		String memberPwd = req.getParameter("memberPwd");
		String confirmMemberPwd = req.getParameter("confirmMemberPwd");
		String memberEmail = req.getParameter("memberEmail");
		String memberNick = req.getParameter("memberNick");
		String countryCode =  req.getParameter("countryCode");
		String phone =  req.getParameter("phone");
		String phoneNumber = countryCode+" "+phone;
		String birthYy =  req.getParameter("year");
		String birthMm =  req.getParameter("month");
		String birthDd =  req.getParameter("day");
		String birthDay = birthYy +"/"+ birthMm+"/"+birthDd;
		String securityQuestion =  req.getParameter("securityQuestion");
		String securityAnswer =  req.getParameter("securityAnswer");
		String height =  req.getParameter("height");
		String weight =  req.getParameter("weight");
		String nationality =  req.getParameter("nationality");
		
		//데이터 뭉치기
		MemberVo vo = new MemberVo();
		vo.setId(memberId);
		vo.setPwd(memberPwd);
		vo.setEmail(memberEmail);
		vo.setNick(memberNick);
		vo.setTel(phoneNumber);
		vo.setDob(birthDay);
		vo.setSecNo(securityQuestion);
		vo.setSecQuizAnswer(securityAnswer);
//		vo.setHeight(height);
//		vo.setWeight(weight);
		//옵션사항이므로 값이 있을때만 들어감
		if(height != null) {
			vo.setHeight(height);
		}
		if(weight != null) {
			vo.setWeight(weight);
		}
		if(nationality != null) {
			vo.setNationCode(nationality);
		}
		//서비스 로직
		int result = 0;
		try {
			MemberService service = new MemberService();
			result = service.join(vo);
		} catch (Exception e) {
			System.out.println("[ERROR] 회원가입 중 예외발생...");
			e.printStackTrace();
		}
			//화면
			if(result == 2) {
				req.getSession().setAttribute("alertMsg", "회원가입 성공! 가입하신정보호 로그인 후 이용해 주세요.");
				resp.sendRedirect("/");
			}else {
				req.setAttribute("errorMsg", "회원가입 실패..다시 작성해주세요.");
				req.getRequestDispatcher("/WEB-INF/views/member/join.jsp").forward(req, resp);
			}

	}
	}

