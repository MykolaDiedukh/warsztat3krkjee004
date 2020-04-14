package pl.coderslab.warstat3krajee04.web.admin.panel;

import pl.coderslab.warstat3krajee04.dao.ExerciseDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteExerciseController", urlPatterns = {"/panel/exercises/delete-exercise"})
public class DeleteExerciseController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        new ExerciseDao().deleteById(id);
        response.sendRedirect(request.getContextPath() + "/panel/exercises");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }


}
