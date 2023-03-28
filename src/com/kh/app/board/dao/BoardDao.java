package com.kh.app.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.kh.app.board.vo.AttachmentVo;
import com.kh.app.board.vo.BoardVo;

import static com.kh.app.util.JDBCTemplate.*;

public class BoardDao {

	public int write(Connection conn, BoardVo vo) throws Exception {
	    String sql = "INSERT INTO REVIEW (NO, TITLE, CONTENT, WRITER) VALUES (SEQ_REVIEW_NO.NEXTVAL, ?, ?, ?)";
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    pstmt.setString(1,vo.getTitle());
	    pstmt.setString(2, vo.getContent());
	    pstmt.setString(3, vo.getWriter());
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

}
