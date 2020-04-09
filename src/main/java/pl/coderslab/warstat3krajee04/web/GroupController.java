package pl.coderslab.warstat3krajee04.web;

import pl.coderslab.warstat3krajee04.dao.UserGroupDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GroupController", urlPatterns = {"/group"})
public class GroupController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("groups", new UserGroupDao().findAll());
        getServletContext().getRequestDispatcher("/group.jsp").forward(request,response);
    }

   /* @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int groupId = Integer.parseInt(request.getParameter("groupId"));
        request.setAttribute("users", new UserDao().findAllByGroupId(groupId));
        getServletContext().getRequestDispatcher("/grouplist.jsp").forward(request,response);
    }*/
}
