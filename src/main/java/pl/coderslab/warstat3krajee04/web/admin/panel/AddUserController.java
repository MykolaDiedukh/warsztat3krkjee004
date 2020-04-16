package pl.coderslab.warstat3krajee04.web.admin.panel;

import pl.coderslab.warstat3krajee04.dao.UserDao;
import pl.coderslab.warstat3krajee04.dao.UserGroupDao;
import pl.coderslab.warstat3krajee04.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddUserController", urlPatterns = {"/panel/users/add-user"})
public class AddUserController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("groups", new UserGroupDao().findAll());
        getServletContext().getRequestDispatcher("/add-user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        int userGroup = Integer.parseInt(request.getParameter("userGroup"));
        new UserDao().create(new User(name, email, password, userGroup));
        response.sendRedirect(request.getContextPath() + "/panel/users");
    }


}
