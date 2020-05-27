/*
* MenuControl.java
*
* All Right Reserved
* Copyright (c) 2019 FPT University
 */
package controller;

import dao.MenuDAO;
import dao.ShareDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Menu;
import model.Share;

/**
 * MenuControl.<br>
 *
 * <pre>
 * Class MenuControl lấy dữ liệu từ database thông qua class shareDAO, SushiDAO và đẩy dữ
 * liệu lên Menu.jsp để hiển thị lên trình duyệt. Trong class này sẽ tiến hành
 * các xử lí dưới đây.
 *
 * . ProcessRequest.
 * . DoGet.
 * . DoPost.
 *
 *
 * </pre>
 *
 * @author FU Kiennthe130540
 * @version 1.0
 */
public class MenuControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            ShareDAO shareDAO = new ShareDAO();
            // Lấy ra 1 list share từ database và lưu vào biến share
            List<Share> share = shareDAO.getShare();
            request.setAttribute("share", share);
            
            String pageIndex = request.getParameter("pageIndex");
            if(pageIndex == null){
                pageIndex = "1";
            }
            int index = Integer.parseInt(pageIndex);  
            MenuDAO menuDAO = new MenuDAO();
            int pageSize = constant.Constant.pageSize;
            int total = menuDAO.getCountMenu();
            int maxPage = total / pageSize;
            if(total % pageSize != 0){
                maxPage++;
            }
            if(index <= 0 || index > maxPage){
                index = 1;
            }
            //Lấy ra từ database 1 list menu theo index và size
            List<Menu> listMenu = menuDAO.getListMenu(index, pageSize);
            request.setAttribute("listMenu", listMenu);
            request.setAttribute("maxPage", maxPage);
            request.setAttribute("pageIndex", index);
            request.setAttribute("status", 2);
            //Đẩy dữ liệu lên Menu.jsp
            request.getRequestDispatcher("Menu.jsp").forward(request, response);
        } catch (IOException | SQLException ex) {
            request.setAttribute("error", ex.getMessage());
            //Đẩy dữ liệu lên error.jsp
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
