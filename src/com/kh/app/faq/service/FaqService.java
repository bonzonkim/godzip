package com.kh.app.faq.service;

import static com.kh.app.util.JDBCTemplate.close;
import static com.kh.app.util.JDBCTemplate.commit;
import static com.kh.app.util.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.kh.app.board.dao.BoardDao;
import com.kh.app.board.vo.AttachmentVo;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.faq.dao.FaqDao;
import com.kh.app.faq.vo.FaqVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PaginationVo;

public class FaqService {

	public int faqWrite(FaqVo fVo, AttachmentVo atVo) throws Exception{
		
		//비지니스 로직
		
				//conn
				Connection conn = JDBCTemplate.getConnection();
				
				FaqDao fDao = new FaqDao();
				//SQL (DAO) == 게시글 인서트
				int result = fDao.faqWrite(conn , fVo);
				//SQL (DAO) == 첨부파일 인서트
				int atResult = fDao.insertAttachment(conn, atVo);
				
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

		FaqDao fDao = new FaqDao();
		int result = fDao.totalArticle(conn);

		close(conn);
		return result;
	}

	public List<FaqVo> faqList(PaginationVo paginationVo) throws SQLException {
		Connection conn = getConnection();

		FaqDao fDao = new FaqDao();
		List<FaqVo> faqList = fDao.faqList(conn,paginationVo);

		close(conn);
//		System.out.println("성공!");
		return faqList;
	}

	public FaqVo detail(String no) throws Exception {
		Connection conn = getConnection();

		FaqDao fDao = new FaqDao();
		int result = fDao.gainAHit(conn, no);
		if (result != 1) {
			throw new Exception("[ERROR] 조회수 증가 실패 잠시 후 다시 시도해주세요.");
		}
		FaqVo fVo = fDao.detail(conn, no);
		commit(conn);
        close(conn);
		return fVo;
	}
}
