package com.kh.app.admin.dao;

import com.kh.app.admin.vo.AdminMemberManageVo;
import com.kh.app.admin.vo.AdminVo;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PaginationVo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static com.kh.app.util.JDBCTemplate.close;

public class AdminDao {

    public AdminVo adminLogin(Connection conn, AdminVo adminInfo) throws Exception {
        String sql = "SELECT * FROM ADMIN WHERE ADMIN_ID =? AND ADMIN_PWD =?";
        PreparedStatement preState = conn.prepareStatement(sql);
        preState.setString(1, adminInfo.getAdminId());
        preState.setString(2, adminInfo.getAdminPwd());
        ResultSet rs = preState.executeQuery();

        AdminVo adminLog = null;
        if (rs.next()) {
            adminLog = new AdminVo();
            adminLog.setAdminId(rs.getString("ADMIN_ID"));
            adminLog.setAdminPwd(rs.getString("ADMIN_PWD"));
        }
        JDBCTemplate.close(rs);
        JDBCTemplate.close(preState);
        return adminLog;
    }

    public int totalArticle(Connection conn)throws Exception {
        String sql = "SELECT COUNT(*) AS TOTAL FROM MEMBER_INFO WHERE QUIT_YN ='N'";
        int total = 0;
        PreparedStatement preState = conn.prepareStatement(sql);
        ResultSet rs = preState.executeQuery();
        if (rs.next()) {
            total = rs.getInt("TOTAL");
        }
        JDBCTemplate.close(rs);
        JDBCTemplate.close(preState);
        return total;
    }
    public List<AdminMemberManageVo> selectList(Connection conn)throws Exception {
        String sql = "SELECT ID,NICK,ENROLL_DATE FROM MEMBER_INFO ORDER BY NO DESC";
        PreparedStatement preState = conn.prepareStatement(sql);
//        int startRow = (paginationVo.getCurrentPage() - 1) * (paginationVo.getBoardLimit());
//        int endRow = startRow + paginationVo.getBoardLimit() - 1;

        ResultSet rs = preState.executeQuery();
        List<AdminMemberManageVo> adminMemberManageList = new ArrayList<AdminMemberManageVo>();

        while (rs.next()) {
            AdminMemberManageVo adminMemberManageVo = new AdminMemberManageVo();
            adminMemberManageVo.setId(rs.getString("ID"));
            adminMemberManageVo.setNick(rs.getString("NICK"));
            adminMemberManageVo.setEnrollDate(rs.getString("ENROLL_DATE"));
            adminMemberManageList.add(adminMemberManageVo);
        }
        close(preState);
        close(rs);
        return adminMemberManageList;
    }


    }

