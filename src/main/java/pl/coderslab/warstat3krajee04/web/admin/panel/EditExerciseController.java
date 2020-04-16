package pl.coderslab.warstat3krajee04.web.admin.panel;

import pl.coderslab.warstat3krajee04.dao.ExerciseDao;
import pl.coderslab.warstat3krajee04.dao.UserDao;
import pl.coderslab.warstat3krajee04.dao.UserGroupDao;
import pl.coderslab.warstat3krajee04.model.Exercise;
import pl.coderslab.warstat3krajee04.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditExerciseController", urlPatterns = {"/panel/exercises/edit-exercise"})
public class EditExerciseController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("exercises", new ExerciseDao().readById(id));
        getServletContext().getRequestDispatcher("/edit-exercise.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        new ExerciseDao().update(new Exercise(id, title, description));
        response.sendRedirect(request.getContextPath() + "/panel/exercises");
    }
}
