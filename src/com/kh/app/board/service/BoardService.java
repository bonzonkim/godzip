
package com.kh.app.board.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.kh.app.board.dao.BoardDao;
import com.kh.app.board.vo.AttachmentVo;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PaginationVo;

import static com.kh.app.util.JDBCTemplate.close;
import static com.kh.app.util.JDBCTemplate.getConnection;

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


	public int totalArticle() {
		Connection conn = getConnection();

		BoardDao dao = new BoardDao();
		int result = dao.totalArticle(conn);

		close(conn);
		return result;
	}

	public List<BoardVo> selectList(PaginationVo paginationVo) throws SQLException {
		Connection conn = getConnection();

		BoardDao dao = new BoardDao();
		List<BoardVo> boardList = dao.selectList(conn,paginationVo);

		close(conn);
		return boardList;
	}


	//게시글 상세조회 
		public BoardVo detail(String no) throws Exception {
			//비즈니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//DAO 호출 (조회쿼리 + 증가쿼리)
			BoardDao dao = new BoardDao();
			int result = dao.gainAHit(conn, no);
			
			if(result != 1) {
				//문제가 발생
				throw new Exception("[ERROR]조회수 증가 실패...");
			}
				
			BoardVo boardVo = dao.detail(conn , no);
			
			//tx , close
			JDBCTemplate.commit(conn);
			JDBCTemplate.close(conn);
			
			return boardVo;
		}//method
}
