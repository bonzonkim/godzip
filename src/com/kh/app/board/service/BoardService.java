package com.kh.app.board.service;

import java.sql.Connection;

import com.kh.app.board.dao.BoardDao;
import com.kh.app.board.vo.AttachmentVo;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.util.JDBCTemplate;

public class BoardService {

	public int write(BoardVo vo, AttachmentVo atVo) throws Exception{
		
		//비지니스 로직
		
				//conn
				Connection conn = JDBCTemplate.getConnection();
				
				BoardDao dao = new BoardDao();
				//SQL (DAO) == 게시글 인서트
				int result = dao.write(conn , vo);
				//SQL (DAO) == 첨부파일 인서트
				int atResult = dao.insertAttachment(conn, atVo);
				
				//tx , close
				if(result * atResult == 1) {
					JDBCTemplate.commit(conn);
				}else {
					JDBCTemplate.rollback(conn);
				}
				
				JDBCTemplate.close(conn);
				
				return result * atResult;
			}


}
