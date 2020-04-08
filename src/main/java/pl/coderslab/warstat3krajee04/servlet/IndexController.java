package pl.coderslab.warstat3krajee04.servlet;

import pl.coderslab.warstat3krajee04.dao.SolutionDao;
import pl.coderslab.warstat3krajee04.model.Solution;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("")
public class IndexController extends HttpServlet {
/*    private int numberSolutions;

    @Override
    public void init(ServletConfig config) throws ServletException {
        this.numberSolutions = 1;
        try {
            this.numberSolutions = Integer.parseInt(config.getInitParameter("number-solutions"));
        } catch (NumberFormatException e){
            e.printStackTrace();
        }
    }*/

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SolutionDao solutionDao = new SolutionDao();
        List<Solution> solutions = solutionDao.findRecent(5);
        request.setAttribute("solutions", solutions);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
