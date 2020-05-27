/*
* MenuDAO.java
*
* All Right Reserved
* Copyright (c) 2019 FPT University
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Menu;

/**
 * MenuDAO.<br>
 *
 * <pre>
 * Class dùng các câu query để lấy dữ liệu từ database
 * Trong class này sẽ tiến hành các xử lí dưới đây.
 *
 * . getCountMenu
 * . getListMenu
 *
 *
 * </pre>
 *
 * @author FU Kiennthe130540
 * @version 1.0
 */
public class MenuDAO {

    /**
     * Store db.
     */
    private final DBContext db;

    /**
     * Constructor no parameter.<br>
     */
    public MenuDAO() {
        this.db = new DBContext();
    }

    /**
     * getCountMenu.<br>
     *
     * Lấy tổng số bản ghi của bảng Menu trong database
     *
     * @return a integer number
     * @throws SQLException
     */
    public int getCountMenu() throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int count = 0;
        try {
            String sql = "SELECT COUNT(id) AS total FROM Menu";
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MenuDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            db.closeConnection(rs, ps, conn);
        }
        return count;
    }

    /**
     * getListMenu.<br>
     *
     * Lấy tất cả các bản ghi của bảng Menu trong database theo pageIndex,
     * pageSize
     *
     * @param pageIndex
     * @param pageSize
     * @return a list
     * @throws SQLException
     */
    public List<Menu> getListMenu(int pageIndex, int pageSize) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Menu> menus = new ArrayList<>();
        try {
            StringBuilder sql = new StringBuilder();
            sql.append("SELECT [id]\n");
            sql.append("      ,[name]\n");
            sql.append("      ,[price]\n");
            sql.append("      ,[shortDes]\n");
            sql.append("      ,[detailDes]\n");
            sql.append("FROM (\n");
            sql.append("SELECT ROW_NUMBER() OVER (ORDER BY ID ASC) AS rn, *\n");
            sql.append("FROM Menu\n");
            sql.append(")AS x\n");
            sql.append("WHERE rn BETWEEN (?-1)*?+1 AND ?*?");
            conn = db.getConnection();
            ps = conn.prepareStatement(sql.toString());
            ps.setInt(1, pageIndex);
            ps.setInt(2, pageSize);
            ps.setInt(3, pageIndex);
            ps.setInt(4, pageSize);
            rs = ps.executeQuery();
            while (rs.next()) {
                Menu menu = new Menu(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("price"),
                        rs.getString("shortDes"),
                        rs.getString("detailDes"));
                menus.add(menu);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MenuDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            db.closeConnection(rs, ps, conn);
        }
        return menus;
    }
}
