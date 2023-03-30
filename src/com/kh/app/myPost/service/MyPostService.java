package com.kh.app.myPost.service;

import static com.kh.app.util.JDBCTemplate.close;
import static com.kh.app.util.JDBCTemplate.commit;
import static com.kh.app.util.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.kh.app.member.vo.MemberVo;
import com.kh.app.myPost.dao.MyPostDao;
import com.kh.app.myPost.vo.MyPostVo;
import com.kh.app.util.page.PaginationVo;

public class MyPostService {

	
	public int totalArticle(MemberVo loginMember) throws Exception {
		Connection conn = getConnection();

		MyPostDao dao = new MyPostDao();
		int totalArticle = dao.totalArticle(conn, loginMember);

		close(conn);
		return totalArticle;
	}

	public List<MyPostVo> selectList(PaginationVo paginationVo, MemberVo loginMember) throws SQLException {
		Connection conn = getConnection();

		MyPostDao dao = new MyPostDao();
		List<MyPostVo> myPostList = dao.selectList(conn,paginationVo,loginMember);

		close(conn);
		return myPostList;
	}
	
	public MyPostVo detail(String no) throws Exception {
		Connection conn = getConnection();

        MyPostDao dao = new MyPostDao();
//		int result = dao.gainAHit(conn, no);
//		if (result != 1) {
//			throw new Exception("[ERROR] 조회수 증가 실패 잠시 후 다시 시도해주세요.");
//		}
		MyPostVo myPostVo = dao.detail(conn, no);
		commit(conn);
        close(conn);
		return myPostVo;
	}
}
