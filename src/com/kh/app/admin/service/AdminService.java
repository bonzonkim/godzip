package com.kh.app.admin.service;

import com.kh.app.admin.dao.AdminDao;
import com.kh.app.admin.vo.AdminMemberManageVo;
import com.kh.app.admin.vo.AdminVo;
import com.kh.app.board.dao.BoardDao;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PaginationVo;

import java.sql.Connection;
import java.util.List;

import static com.kh.app.util.JDBCTemplate.close;
import static com.kh.app.util.JDBCTemplate.getConnection;

public class AdminService {

    public AdminVo adminLogin(AdminVo adminInfo)throws Exception {
        Connection conn = JDBCTemplate.getConnection();
        AdminDao dao = new AdminDao();
        AdminVo adminLog = dao.adminLogin(conn, adminInfo);

        JDBCTemplate.close(conn);
        return adminLog;
    }

    public int totalArticle()throws Exception {
        Connection conn = getConnection();

        AdminDao dao = new AdminDao();
        int result = dao.totalArticle(conn);

        close(conn);
        return result;
    }
    public List<AdminMemberManageVo> selectList() throws Exception {
        Connection conn = getConnection();

        AdminDao dao = new AdminDao();
        List<AdminMemberManageVo> memberManageVo = dao.selectList(conn);

        close(conn);
        return memberManageVo;
    }


}
