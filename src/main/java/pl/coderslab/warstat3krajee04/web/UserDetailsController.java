package pl.coderslab.warstat3krajee04.web;

import pl.coderslab.warstat3krajee04.dao.SolutionDao;
import pl.coderslab.warstat3krajee04.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserDetailsController", urlPatterns = {"/group/list/details"})
public class UserDetailsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userid"));
        request.setAttribute("details", new UserDao().readById(userId));
        request.setAttribute("solutionsOfUser", new SolutionDao().findAllByUserId(userId));
        getServletContext().getRequestDispatcher("/userdata.jsp").forward(request,response);
    }
}
