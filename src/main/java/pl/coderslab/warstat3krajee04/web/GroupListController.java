package pl.coderslab.warstat3krajee04.web;

import pl.coderslab.warstat3krajee04.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GroupListController", urlPatterns = {"/group/list"})
public class GroupListController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int groupId = Integer.parseInt(request.getParameter("groupId"));
        request.setAttribute("users", new UserDao().findAllByGroupId(groupId));
        getServletContext().getRequestDispatcher("/grouplist.jsp").forward(request,response);
    }
}
