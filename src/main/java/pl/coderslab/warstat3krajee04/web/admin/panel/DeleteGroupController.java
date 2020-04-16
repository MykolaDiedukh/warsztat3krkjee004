package pl.coderslab.warstat3krajee04.web.admin.panel;

import pl.coderslab.warstat3krajee04.dao.UserDao;
import pl.coderslab.warstat3krajee04.dao.UserGroupDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteGroupController", urlPatterns = {"/panel/group/delete-group"})
public class DeleteGroupController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        new UserGroupDao().deleteById(id);
        response.sendRedirect(request.getContextPath() + "/panel/groups");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }


}
