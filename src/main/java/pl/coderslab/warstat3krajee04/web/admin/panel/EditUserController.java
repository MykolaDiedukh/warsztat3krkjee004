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

@WebServlet(name = "EditUserController", urlPatterns = {"/panel/users/edit-user"})
public class EditUserController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("userid"));
        request.setAttribute("users", new UserDao().readById(id));
        request.setAttribute("groups", new UserGroupDao().findAll());
        getServletContext().getRequestDispatcher("/edit-user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("username");
        String email = request.getParameter("email");
        int userGroup = Integer.parseInt(request.getParameter("userGroup"));
        User user = new User();
        user.setId(id);
        user.setUsername(name);
        user.setEmail(email);
        user.setUserGroupId(userGroup);
        new UserDao().update(user);
        response.sendRedirect(request.getContextPath() + "/panel/users");
    }
}
