package com.kh.app.pressboard.dao;

import static com.kh.app.util.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.page.vo.PageVo;
import com.kh.app.pressboard.vo.PressAttachmentVo;
import com.kh.app.pressboard.vo.PressBoardVo;

public class PressBoardDao {

	public int write(Connection conn, PressBoardVo vo) throws Exception{
		
		String sql="INSERT INTO PRESS (NO, TITLE, CONTENT, WRITER) VALUES (SEQ_PRESS_NO.NEXTVAL, ?, ?, ?)";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getContent());
		pstmt.setString(3, vo.getWriter());
		int result = pstmt.executeUpdate();
		
		pstmt.close();
		
		return result;
	}

	public int insertAttachment(Connection conn, PressAttachmentVo patVo) throws Exception{
		String sql="INSERT INTO PRESSATTACHMENT (NO, ORIGIN_NAME, CHANGE_NAME) VALUES (SEQ_PRESS_ATTACHMENT_NO.NEXTVAL, ?, ?)";
		
		PreparedStatement pstmt= conn.prepareStatement(sql);
		pstmt.setString(1, patVo.getOriginName());
		pstmt.setString(2, patVo.getChangeName());
		int result = pstmt.executeUpdate();
		
		pstmt.close();
		
		return result;
	}
	public int selectCount(Connection conn) throws Exception {
		String sql = "SELECT COUNT(*) AS CNT FROM PRESS WHERE DELETE_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		
		int cnt = 0;
		if( rs.next() ) {
			cnt = rs.getInt("CNT");
		}
		
		close(rs);
		close(pstmt);
		
		return cnt;
}
	public List<PressBoardVo> selectPressList(Connection conn, PageVo pageVo) throws Exception {
		
		
		String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT B.NO , B.TITLE , B.CONTENT , B.WRITER , B.ENROLL_DATE , B.HIT , M.NICK FROM PRESS B JOIN MEMBER_INFO M ON B.WRITER = M.NO WHERE B.DELETE_YN = 'N' ORDER BY NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pageVo.getCurrentPage()-1) * pageVo.getBoardLimit() + 1;
		int endRow = startRow + pageVo.getBoardLimit() - 1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();
		

		List<PressBoardVo> pressBoardList = new ArrayList<PressBoardVo>();
		
		while( rs.next() ) {
			
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String writer = rs.getString("NICK");
			String enrollDate = rs.getString("ENROLL_DATE");
			
			PressBoardVo vo = new PressBoardVo();
			vo.setNo(no);
			vo.setTitle(title);
			vo.setContent(content);
			vo.setWriter(writer);
			vo.setEnroll_date(enrollDate);
			
			pressBoardList.add(vo);
		}
		
		return pressBoardList ;
}

	public PressBoardVo selectOne(Connection conn, String no) throws Exception{

				String sql = "SELECT P.NO , P.TITLE , P.CONTENT , P.WRITER , P.ENROLL_DATE, PA.CHANGE_NAME FROM PRESS P JOIN PRESSATTACHMENT PA ON (P.NO = PA.NO) WHERE P.NO = ? AND P.DELETE_YN = 'N'";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, no);
				ResultSet rs = pstmt.executeQuery();
				
				
				PressBoardVo pressBoardVo = null;
				if( rs.next() ) {
					String boardNo = rs.getString("NO");
					String title = rs.getString("TITLE");
					String content = rs.getString("CONTENT");
					String writer = rs.getString("WRITER");
					String enrollDate = rs.getString("ENROLL_DATE");
					String changeName = rs.getString("CHANGE_NAME");
					
					pressBoardVo = new PressBoardVo();
					pressBoardVo.setNo(boardNo);
					pressBoardVo.setTitle(title);
					pressBoardVo.setContent(content);
					pressBoardVo.setWriter(writer);
					pressBoardVo.setEnroll_date(enrollDate);
					pressBoardVo.setChangeName(changeName);
				}
				
				
				close(rs);
				close(pstmt);
				
				return pressBoardVo;
	}

	public int increaseHit(Connection conn, String no) throws Exception{
		
		//SQL
				String sql = "UPDATE PRESS SET HIT = HIT+1 WHERE NO = ?";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, no);
				int result = pstmt.executeUpdate();
				
				//close
				close(pstmt);
			
				return result;

		
		
		
	}

}
