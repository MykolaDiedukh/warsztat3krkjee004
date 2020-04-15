package pl.coderslab.warstat3krajee04.web.admin.panel;

import pl.coderslab.warstat3krajee04.dao.SolutionDao;
import pl.coderslab.warstat3krajee04.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddSolutionPointServlet", urlPatterns = {"/panel/solutions/add-solution-point"})
public class AddSolutionPointServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("solutions", new SolutionDao().findSolutionById(id));
        getServletContext().getRequestDispatcher("/add-solution-point.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int point = Integer.parseInt(request.getParameter("point"));
        String comment = request.getParameter("comment");
        Solution solution = new Solution();
        solution.setId(id);
        solution.setPoint(point);
        solution.setCommentar(comment);
        new SolutionDao().updateRating(solution);
        response.sendRedirect(request.getContextPath() + "/panel/solutions/solution-point");
    }
}
