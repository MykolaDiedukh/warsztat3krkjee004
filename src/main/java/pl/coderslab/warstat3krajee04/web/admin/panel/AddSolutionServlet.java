package pl.coderslab.warstat3krajee04.web.admin.panel;

import pl.coderslab.warstat3krajee04.dao.ExerciseDao;
import pl.coderslab.warstat3krajee04.dao.SolutionDao;
import pl.coderslab.warstat3krajee04.dao.UserDao;
import pl.coderslab.warstat3krajee04.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet(name = "AddSolutionServlet", urlPatterns = {"/panel/solutions/add-solution"})
public class AddSolutionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("exercises", new ExerciseDao().findAll());
        request.setAttribute("users", new UserDao().findAll());
        getServletContext().getRequestDispatcher("/add-solution.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int exerciseId = Integer.parseInt(request.getParameter("selectedExercise"));
        int userId = Integer.parseInt(request.getParameter("selectedUser"));
        LocalDateTime created = LocalDateTime.now();
        new SolutionDao().create(new Solution(created, exerciseId, userId));
        response.sendRedirect(request.getContextPath() + "/panel/solutions");
    }


}
