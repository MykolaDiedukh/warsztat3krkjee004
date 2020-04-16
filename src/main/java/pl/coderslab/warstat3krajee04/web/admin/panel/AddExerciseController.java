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

@WebServlet(name = "AddExerciseController", urlPatterns = {"/panel/exercises/add-exercise"})
public class AddExerciseController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/add-exercise.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        new ExerciseDao().create(new Exercise(title, description));
        response.sendRedirect(request.getContextPath() + "/panel/exercises");
    }


}
