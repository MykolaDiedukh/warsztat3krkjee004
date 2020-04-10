package pl.coderslab.warstat3krajee04.web.admin.panel;

import pl.coderslab.warstat3krajee04.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ListUserController", urlPatterns = {"/panel/users"})
public class ListUserController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("users", new UserDao().findAllJoinByUsersGroup());
        getServletContext().getRequestDispatcher("/panel-users.jsp").forward(request,response);
    }
}
