package com.kh.app.myPost.service;

import static com.kh.app.util.JDBCTemplate.close;
import static com.kh.app.util.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.kh.app.member.vo.MemberVo;
import com.kh.app.myPost.dao.MyPostMyDao;

public class MyPostMyService {

	public int totalArticle(MemberVo loginMember) throws Exception {
		Connection conn = getConnection();

		MyPostMyDao dao = new MyPostMyDao();
		int totalArticle = dao.totalArticle(conn, loginMember);

		close(conn);
		return totalArticle;
	}

	
}
