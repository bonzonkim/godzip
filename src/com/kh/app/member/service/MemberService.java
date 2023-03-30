package com.kh.app.member.service;

import java.sql.Connection;

import com.kh.app.member.dao.MemberDao;
import com.kh.app.member.vo.MemberVo;
import com.kh.app.util.JDBCTemplate;

public class MemberService {

		//회원가입
		public int join(MemberVo vo) throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			MemberDao dao = new MemberDao();
			int result = dao.join(conn , vo);
			
			//tx , close
			if(result == 2) {
				JDBCTemplate.commit(conn);
			}else {
				JDBCTemplate.rollback(conn);
			}
			
			JDBCTemplate.close(conn);
			
			return result;
		}	
		//로그인
		public MemberVo login(MemberVo vo) throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			MemberDao dao = new MemberDao();
			MemberVo loginMember = dao.login(conn , vo);
			
			//close
			JDBCTemplate.close(conn);
			
			return loginMember;
		}//method



		//정보 수정
		public int edit(MemberVo vo) throws Exception {
			
			Connection conn = JDBCTemplate.getConnection();
			
			MemberDao dao = new MemberDao();
			int result = dao.edit(conn, vo);
			
			JDBCTemplate.close(conn);
			
			return result;
		}

}