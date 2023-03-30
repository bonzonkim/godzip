package com.kh.app.pressboard.controller;

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
import javax.websocket.Extension.Parameter;

import com.kh.app.pressboard.service.PressBoardService;
import com.kh.app.pressboard.vo.PressAttachmentVo;
import com.kh.app.pressboard.vo.PressBoardVo;


@MultipartConfig(
		maxFileSize=1024*1024*100,
		maxRequestSize = 1024*1024*100*10
		)


@WebServlet("/press/write")
public class PressWriteController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/pressboard/pressWrite.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String writer = req.getParameter("writer");
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		
		Part f = req.getPart("f");
		
		
		InputStream fis =f.getInputStream();
		System.out.println(fis);
		
		String path= req.getServletContext().getRealPath("/resources/img/press/");
		String originfileName = f.getSubmittedFileName();
		
		String ext = originfileName.substring(originfileName.lastIndexOf("."));
		
		String fileName = UUID.randomUUID().toString();
		File target=new File(path + fileName+ ext);
		FileOutputStream fos = new FileOutputStream(target);
		
		
			byte[] buf = new byte[1024];
			int size = 0;
			while( (size = fis.read(buf)) != -1) {
				fos.write(buf , 0 , size);
		}
		
		fis.close();
		fos.close();

		PressBoardVo vo=new PressBoardVo();
		vo.setWriter(writer);
		vo.setTitle(title);
		vo.setContent(content);
		
		int result=0;
		
		try {
			//파일 정보 디비에 인서트 시작 (원본명,변경된이름)
			
			PressAttachmentVo patVo = new PressAttachmentVo();
			patVo.setOriginName(originfileName);
			patVo.setChangeName(fileName + ext);
			
			//파일 정보 디비에 인서트 끝

			//서비스 호출
			PressBoardService bs = new PressBoardService();
			result = bs.write(vo , patVo);
			
			
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