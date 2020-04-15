package pl.coderslab.warstat3krajee04.web.admin.panel;

import pl.coderslab.warstat3krajee04.dao.SolutionDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ShowSolutionServlet", urlPatterns = {"/panel/solutions/show-solutions"})
public class ShowSolutionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("solutions", new SolutionDao().findAll());
        getServletContext().getRequestDispatcher("/show-solutions.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
