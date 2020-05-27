/*
* SushiDAO.java
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
import model.Sushi;

/**
 * SushiDAO.<br>
 *
 * <pre>
 * Class dùng các câu query để lấy dữ liệu từ database
 * Trong class này sẽ tiến hành các xử lí dưới đây.
 *
 * . getIdOfFirstSuShi
 * . getOne
 * . getTotalSushi
 * . getListSuShiPaging
 *
 *
 * </pre>
 *
 * @author FU Kiennthe130540
 * @version 1.0
 */
public class SushiDAO {

    /**
     * Store db.
     */
    private final DBContext db;

    /**
     * Constructor no parameter.<br>
     */
    public SushiDAO() {
        this.db = new DBContext();
    }

    /**
     * getIdOfFirstSuShi.<br>
     *
     * Lấy id của sushi đầu tiên trong database
     *
     * @return a id
     * @throws SQLException
     */
    public int getIdOfFirstSuShi() throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int id = -1;
        try {
            StringBuilder sql = new StringBuilder();
            sql.append("SELECT TOP(1) [id]\n");
            sql.append("  FROM [dbo].[Sushi]\n");
            sql.append("  ORDER BY id ASC\n");
            conn = db.getConnection();
            ps = conn.prepareStatement(sql.toString());
            rs = ps.executeQuery();
            if (rs.next()) {
                id = rs.getInt("id");
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SushiDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            db.closeConnection(rs, ps, conn);
        }
        return id;
    }

    /**
     * getOne.<br>
     *
     * Lấy 1 sushi trong database theo id
     *
     * @param id
     * @return a sushi
     * @throws SQLException
     */
    public Sushi getOne(int id) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            StringBuilder sql = new StringBuilder();
            sql.append("SELECT [id]\n");
            sql.append("      ,[name]\n");
            sql.append("      ,[image]\n");
            sql.append("      ,[shortDes]\n");
            sql.append("      ,[detailDes]\n");
            sql.append("      ,[price]\n");
            sql.append("  FROM [dbo].[Sushi]\n");
            sql.append("  WHERE id = ?");
            conn = db.getConnection();
            ps = conn.prepareStatement(sql.toString());
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                Sushi sushi = new Sushi(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image"),
                        rs.getString("shortDes"),
                        rs.getString("detailDes"),
                        rs.getString("price"));
                return sushi;
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SushiDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            db.closeConnection(rs, ps, conn);
        }
        return null;
    }

    /**
     * getTotalSushi.<br>
     *
     * Lấy tổng số lượng sushi trong database
     *
     * @return total
     * @throws SQLException
     */
    public int getTotalSushi() throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int total = 0;
        try {
            String sql = "SELECT COUNT(id) AS total FROM [dbo].[Sushi]";
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                total = rs.getInt("total");
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SushiDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            db.closeConnection(rs, ps, conn);
        }
        return total;
    }

    /**
     * getListSuShiPaging.<br>
     *
     * Lấy 1 list sushi trong database theo pageIndex, pageSize
     *
     * @param pageIndex
     * @param pageSize
     * @return a list
     * @throws SQLException
     */
    public List<Sushi> getListSuShiPaging(int pageIndex, int pageSize) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Sushi> list = new ArrayList<>();
        try {
            StringBuilder sql = new StringBuilder();
            sql.append("SELECT [id]\n");
            sql.append("      ,[name]\n");
            sql.append("      ,[image]\n");
            sql.append("      ,[shortDes]\n");
            sql.append("      ,[detailDes]\n");
            sql.append("      ,[price]\n");
            sql.append("FROM (\n");
            sql.append("SELECT ROW_NUMBER() OVER (ORDER by ID ASC) as rn, *\n");
            sql.append("FROM Sushi\n");
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
                Sushi sushi = new Sushi(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image"),
                        rs.getString("shortDes"),
                        rs.getString("detailDes"),
                        rs.getString("price"));
                list.add(sushi);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SushiDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            db.closeConnection(rs, ps, conn);
        }
        return list;
    }
}
