package servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import dal.UserDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thaycacac
 */
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        int type = Integer.parseInt(request.getParameter("type"));
        String email = request.getParameter("email");
        UserDAO userDao = new UserDAO();
        userDao.addUser(username, password, type, email);
        request.getRequestDispatcher("login.jsp").forward(request, response);
        request.setAttribute("username", username);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
