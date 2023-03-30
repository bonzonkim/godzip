package com.kh.app.faq.dao;

import static com.kh.app.util.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.board.vo.AttachmentVo;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.faq.vo.FaqVo;
import com.kh.app.util.page.PaginationVo;

public class FaqDao {

	public int faqWrite(Connection conn, FaqVo fVo) throws Exception {
		String sql = "INSERT INTO FAQ (NO, TITLE, CONTENT, ADMIN_NO) VALUES (SEQ_REVIEW_NO.NEXTVAL, ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, fVo.getTitle());
		pstmt.setString(2, fVo.getContent());
		pstmt.setString(3, fVo.getAdminNo());

		int result = pstmt.executeUpdate();

		pstmt.close();

		return result;
	}

	public int insertAttachment(Connection conn, AttachmentVo atVo) throws Exception {
		String sql = "INSERT INTO ATTACHMENT (NO, ORIGIN_NAME, CHANGE_NAME) VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, atVo.getOriginName());
		pstmt.setString(2, atVo.getChangeName());
		int result = pstmt.executeUpdate();

		// close
		pstmt.close();

		return result;
	}

	public int totalArticle(Connection conn) {
		String sql = "SELECT COUNT(*) AS TOTAL FROM BOARD WHERE DELETE_YN = 'N'";
		int total = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				total = rs.getInt("TOTAL");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return total;
	}

	public List<FaqVo> faqList(Connection conn, PaginationVo paginationVo) throws SQLException {
		String sql = "SELECT * FROM (SELECT ROWNUM AS RNUM, TEMP.* FROM "
				+ "(SELECT F.NO , F.TITLE , F.CONTENT , F.ADMIN_NO , F.ENROLL_DATE , F.HIT FROM FAQ F JOIN MEMBER_INFO MI ON F.ADMIN_NO = MI.NO WHERE F.DELETE_YN = 'N' ORDER BY NO DESC) TEMP)"
				+ " WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (paginationVo.getCurrentPage() - 1) * (paginationVo.getBoardLimit());
		int endRow = startRow + paginationVo.getBoardLimit() - 1;

		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();
		List<FaqVo> faqTitleList = new ArrayList<FaqVo>();

		while (rs.next()) {
			FaqVo fVo = new FaqVo();
			fVo.setNo(rs.getString("NO"));
			fVo.setTitle(rs.getString("TITLE"));
			fVo.setContent(rs.getString("CONTENT"));
			fVo.setAdminNo("ADMIN");
			fVo.setEnrollDate((rs.getString("ENROLL_DATE")));
			fVo.setHit(rs.getString("HIT"));
			faqTitleList.add(fVo);

		}

		close(pstmt);
		close(rs);
		return faqTitleList;
	}

	public FaqVo detail(Connection conn, String no) throws Exception {
		String sql = "SELECT F.NO, F.TITLE, F.CONTENT, F.ADMIN_NO, F.ENROLL_DATE, F.HIT, A.CHANGE_NAME FROM FAQ F JOIN ATTACHMENT A ON (F.NO = A.NO) WHERE F.NO = ? AND F.DELETE_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		ResultSet rs = pstmt.executeQuery();
		FaqVo fVo = null;
		if (rs.next()) {
			fVo = new FaqVo();
			fVo.setNo(rs.getString("NO"));
			fVo.setTitle(rs.getString("TITLE"));
			fVo.setContent(rs.getString("CONTENT"));
			fVo.setAdminNo(rs.getString("ADMIN_NO"));
			fVo.setEnrollDate(rs.getString("ENROLL_DATE"));
			fVo.setHit(rs.getString("HIT"));
			fVo.setChangeName(rs.getString("CHANGE_NAME"));
		}
		close(pstmt);
		close(rs);
		return fVo;

	}

	public int gainAHit(Connection conn, String no) throws Exception {
		String sql = "UPDATE FAQ SET HIT = HIT + 1 WHERE NO = ?";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		int result = pstmt.executeUpdate();

		FaqVo fVo = new FaqVo();

		close(pstmt);
		return result;
	}
}
