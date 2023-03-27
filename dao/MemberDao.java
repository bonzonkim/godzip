package com.kh.app.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.kh.app.member.vo.MemberVo;
import com.kh.app.util.JDBCTemplate;

public class MemberDao {
	public int join(Connection conn, MemberVo vo) throws Exception {
	    String sql = "INSERT INTO MEMBER_INFO(NO , ID ,  PWD , EMAIL, NICK , TEL, DOB, SEC_NO, SEC_QUIZ_ANSWER, LOGIN_TYPE_NO ) VALUES(SEQ_MEMBER_INFO_NO.NEXTVAL , ? , ? , ? , ? ,?,?,?,?,?)";
	    PreparedStatement pstmt = conn.prepareStatement(sql, new String[]{"NO"});
	    pstmt.setString(1, vo.getId());
	    pstmt.setString(2, vo.getPwd());
	    pstmt.setString(3, vo.getEmail());
	    pstmt.setString(4, vo.getNick());
	    pstmt.setString(5, vo.getTel());
	    pstmt.setString(6, vo.getDob());
	    pstmt.setString(7, vo.getSecNo().toString());
	    pstmt.setString(8, vo.getSecQuizAnswer());
	    pstmt.setString(9, Integer.toString(1));
	    int result = pstmt.executeUpdate();

	    ResultSet rs = pstmt.getGeneratedKeys();
	    int memberInfoNo = 0;
	    if (rs.next()) {
	        memberInfoNo = rs.getInt(1);
	    }

	    String sql2 = "INSERT INTO SPECIAL_INFO(NO, WEIGHT, HEIGHT, NATION_NO) " +
	                  "SELECT MI.NO, ?, ?, ? " +
	                  "FROM MEMBER_INFO MI " +
	                  "WHERE MI.NO = ?";
	    PreparedStatement pstmt2 = conn.prepareStatement(sql2);
	    pstmt2.setString(1, vo.getWeight());
	    pstmt2.setString(2, vo.getHeight());
	    pstmt2.setString(3, vo.getNationCode().toString());
	    pstmt2.setInt(4, memberInfoNo);
	    int result2 = pstmt2.executeUpdate();

	    JDBCTemplate.close(pstmt);
	    JDBCTemplate.close(pstmt2);
	    
	    return result + result2;
	    
	}
	
	//로그인
		public MemberVo login(Connection conn, MemberVo vo) throws Exception {
			
			//SQL (close)
			String sql = "SELECT * FROM MEMBER_INFO WHERE ID = ? AND PWD = ? AND QUIT_YN = 'N'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPwd());
			ResultSet rs = pstmt.executeQuery();
			
			//rs -> obj
			MemberVo loginMember = null;
			if(rs.next()) {
				String no = rs.getString("NO");
				String id = rs.getString("ID");
				String pwd = rs.getString("PWD");
				String nick = rs.getString("NICK");
				String gradeNo = rs.getString("GRADE_NO");
				String enrollDate = rs.getString("ENROLL_DATE");
				String secNo = rs.getString("SEC_NO");
				String lastVisit = rs.getString("LAST_VISIT");
				String totalVisit = rs.getString("TOTAL_VISIT");
				String dob = rs.getString("DOB");
				String tel = rs.getString("TEL");
				String email = rs.getString("EMAIL");
				
				
				loginMember = new MemberVo();
				loginMember.setNo(no);
				loginMember.setId(id);
				loginMember.setPwd(pwd);
				loginMember.setNick(nick);
				loginMember.setGradeNo(gradeNo);
				loginMember.setEnrollDate(enrollDate);
				loginMember.setEnrollDate(secNo);
				loginMember.setEnrollDate(lastVisit);
				loginMember.setEnrollDate(totalVisit);
				loginMember.setEnrollDate(dob);
				loginMember.setEnrollDate(tel);
				loginMember.setEnrollDate(email);
			}
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
			
			return loginMember;
			
		}

	}

