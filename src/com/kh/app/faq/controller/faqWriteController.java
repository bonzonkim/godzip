package com.kh.app.faq.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.kh.app.board.vo.AttachmentVo;
import com.kh.app.faq.service.FaqService;
import com.kh.app.faq.vo.FaqVo;

@MultipartConfig(
		maxFileSize = 1024 * 1024 * 50 ,		//파일 하나당 크기
		maxRequestSize = 1024 * 1024 * 50 * 10	//리퀘스트 총 크기
	)

@WebServlet("/faq/write")
public class faqWriteController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/more/faqWrite.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String no = req.getParameter("no");
		String title = req.getParameter("title");
		String content =req.getParameter("content");
		String adminNo = req.getParameter("adminNo");
		String enrollDate = req.getParameter("enrollDate");
		String deleteYn = req.getParameter("deleteYn");
		String hit = req.getParameter("hit");
		
		Part f = req.getPart("f");
		InputStream fis = null;
		if(f != null) {
		fis = f.getInputStream();
		}
		
		
		
		String path = req.getServletContext().getRealPath("/resources/img/");
		String originfileName =" ";
		if(f != null) {
		originfileName = f.getSubmittedFileName();}
		String ext = "";
		if (originfileName != null && originfileName.contains(".")) {
		    ext = originfileName.substring(originfileName.lastIndexOf("."));
		}

		
		String fileName = UUID.randomUUID().toString();
		
		File target = new File(path + fileName + ext);
		FileOutputStream fos = new FileOutputStream(target);//아웃풋 스트림 준비
		
		//Read , Write
				byte[] buf = new byte[1024];
				int size = 0;
				while( (size = fis.read(buf)) != -1) {
					fos.write(buf , 0 , size);
				}
				
		fis.close();
		fos.close();
		
		FaqVo fVo = new FaqVo();
		fVo.setNo(no);
		fVo.setTitle(title);
		fVo.setContent(content);
		fVo.setHit(hit);
		fVo.setAdminNo(adminNo);
		fVo.setEnrollDate(enrollDate);
		fVo.setEnrollDate(deleteYn);
		
		int result=0;
		
		try {
			//파일 정보 디비에 인서트 시작 (원본명,변경된이름)
			
			AttachmentVo Vo = new AttachmentVo();
			Vo.setOriginName(originfileName);
			Vo.setChangeName(fileName + ext);
			
			//파일 정보 디비에 인서트 끝

			//서비스 호출
			FaqService fs = new FaqService();
			result = fs.faqWrite(fVo , Vo);
			
			
		}catch(Exception e) {
			System.out.println("[ERROR] 게시글 작성 중 예외발생 ...");
			e.printStackTrace();
		}
		
		//화면
		if(result == 1) {
			req.getSession().setAttribute("alertMsg", "게시글 작성 성공!");
			resp.sendRedirect("/");
		}else {
			req.getSession().setAttribute("alertMsg", "게시글 작성 실패 …");
			resp.sendRedirect("/");
		}
		
	}
}