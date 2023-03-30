package com.kh.app.pressboard.service;

import java.sql.Connection;
import java.util.List;

import com.kh.app.board.dao.BoardDao;
import com.kh.app.page.vo.PageVo;
import com.kh.app.pressboard.dao.PressBoardDao;
import com.kh.app.pressboard.vo.PressAttachmentVo;
import com.kh.app.pressboard.vo.PressBoardVo;
import com.kh.app.util.JDBCTemplate;

public class PressBoardService {

	public int write(PressBoardVo vo, PressAttachmentVo patVo) throws Exception{
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		PressBoardDao dao = new PressBoardDao();
	
		int result = dao.write(conn , vo);
	
		int patResult = dao.insertAttachment(conn, patVo);
		
	
		if(result * patResult == 1) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result * patResult;
	}

	public int selectCount() throws Exception{
		//비지니스 로직
		
				//conn
				Connection conn = JDBCTemplate.getConnection();
				
				//SQL (DAO)
				PressBoardDao dao = new PressBoardDao();
				int result = dao.selectCount(conn);
				
				//close
				JDBCTemplate.close(conn);
				
				return result;
	}

	public List<PressBoardVo> selectList(PageVo pageVo) throws Exception {
		
		
			
				Connection conn = JDBCTemplate.getConnection();
				
			
				PressBoardDao dao = new PressBoardDao();
				List<PressBoardVo> pressBoardList = dao.selectPressList(conn , pageVo);
				
				//close
				JDBCTemplate.close(conn);
				
				return pressBoardList;
	}

	public PressBoardVo selectOne(String no) throws Exception{
		
				Connection conn = JDBCTemplate.getConnection();
					
				PressBoardDao dao = new PressBoardDao();
				int result = dao.increaseHit(conn, no);
				
				if(result != 1) {
					//문제가 발생
					System.out.println(result);
//					throw new Exception("[ERROR]조회수 증가 실패...");
				}
				PressBoardVo pressBoardVo = dao.selectOne(conn , no);
				
		
				JDBCTemplate.commit(conn);
				JDBCTemplate.close(conn);
				
				return pressBoardVo;
	}
}
