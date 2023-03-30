package com.kh.app.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.board.vo.AttachmentVo;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.util.page.PaginationVo;

import static com.kh.app.util.JDBCTemplate.*;

public class BoardDao {

	public int write(Connection conn, BoardVo vo) throws Exception {
	    String sql = "INSERT INTO REVIEW (NO, TITLE, CONTENT, WRITER, CATEGORY1) VALUES (SEQ_REVIEW_NO.NEXTVAL, ?, ?, ?, ?)";
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    pstmt.setString(1,vo.getTitle());
	    pstmt.setString(2, vo.getContent());
	    pstmt.setString(3, vo.getWriter());
	    pstmt.setString(4, vo.getCategory1());
	    int result = pstmt.executeUpdate();

	    pstmt.close();

	    return result;
	}
	
//	String loginNick = (String)request.getSession().getAttribute("loginNick");
	
//	public int write(Connection conn, BoardVo vo) throws Exception {
//	    String sql = "INSERT INTO REVIEW (NO, TITLE, CONTENT, WRITER, CATEGORY1) VALUES (SEQ_REVIEW_NO.NEXTVAL, ?, ?, ?, 'car')";
//	    PreparedStatement pstmt = conn.prepareStatement(sql);
//	    pstmt.setString(1,vo.getTitle());
//	    pstmt.setString(2, vo.getContent());
//	    pstmt.setString(3, vo.getLoginMember().getNick()); // 수정된 부분
//	    int result = pstmt.executeUpdate();
//
//	    pstmt.close();
//
//	    return result;
//	}


	public int insertAttachment(Connection conn, AttachmentVo atVo) throws Exception{
	    String sql = "INSERT INTO ATTACHMENT (NO, ORIGIN_NAME, CHANGE_NAME) VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, ?, ?)";
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    pstmt.setString(1, atVo.getOriginName());
	    pstmt.setString(2, atVo.getChangeName());
	    int result = pstmt.executeUpdate();

	    //close
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
			if (rs.next()){
				total = rs.getInt("TOTAL");
			}
		} catch (Exception e) {
            e.printStackTrace();
        }finally {
			close(pstmt);
			close(rs);
		}
		return total;
	}

	public List<BoardVo> selectList(Connection conn, PaginationVo paginationVo) throws SQLException {
		String sql = "SELECT * FROM (SELECT ROWNUM AS RNUM, SUB.* FROM (SELECT R.NO , R.TITLE , R.CONTENT , R.WRITER , R.ENROLL_DATE , R.HIT , MI.NICK FROM REVIEW r JOIN MEMBER_INFO MI ON R.WRITER = MI.NO WHERE R.DELETE_YN = 'N' ORDER BY NO DESC) SUB) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (paginationVo.getCurrentPage() - 1) * (paginationVo.getBoardLimit());
		int endRow = startRow + paginationVo.getBoardLimit() - 1;

		pstmt.setInt(1,startRow );
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();
		List<BoardVo> boardList = new ArrayList<BoardVo>();

		while (rs.next()) {
			BoardVo boardVo = new BoardVo();
			boardVo.setNo(rs.getString("NO"));
			boardVo.setTitle(rs.getString("TITLE"));
			boardVo.setContent(rs.getString("CONTENT"));
			boardVo.setWriter(rs.getString("NICK"));
			boardVo.setEnroll_date(rs.getString("ENROLL_DATE"));
			boardVo.setHit(rs.getString("HIT"));
			boardList.add(boardVo);
		}

		close(pstmt);
		close(rs);
		return boardList;
	}

	public BoardVo detail(Connection conn, String no) throws Exception{
		String sql = "SELECT R.NO, R.TITLE, R.CONTENT, R.WRITER, R.ENROLL_DATE, R.HIT, A.CHANGE_NAME FROM REVIEW R JOIN ATTACHMENT A ON (R.NO = A.NO) WHERE R.NO = ? AND R.DELETE_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		ResultSet rs = pstmt.executeQuery();
		BoardVo boardVo = null;
		if (rs.next()) {
			boardVo = new BoardVo();
			boardVo.setNo(rs.getString("NO"));
			boardVo.setTitle(rs.getString("TITLE"));
			boardVo.setContent(rs.getString("CONTENT"));
			boardVo.setWriter(rs.getString("WRITER"));
			boardVo.setEnroll_date(rs.getString("ENROLL_DATE"));
			boardVo.setHit(rs.getString("HIT"));
			boardVo.setChangeName(rs.getString("CHANGE_NAME"));
		}
		close(pstmt);
		close(rs);
		return boardVo;

	}

	public int gainAHit(Connection conn, String no) throws Exception {
		String sql = "UPDATE REVIEW SET HIT = HIT + 1 WHERE NO = ?";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		int result = pstmt.executeUpdate();

		BoardVo boardVo = new BoardVo();


		close(pstmt);
		return result;
	}
}
