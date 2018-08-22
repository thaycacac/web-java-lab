package servlet;

import dal.QuestionDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thaycacac
 */
public class CheckResultServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String check = request.getParameter("answer");
        int questionid = Integer.parseInt(request.getParameter("questionid"));
        QuestionDAO questionDAO = new QuestionDAO();
        String answerCorrect = questionDAO.getCorrectAnswer(questionid);
        int anwerCorrectCurrent = Integer.parseInt((String) getServletContext().getAttribute("answerCorrect"));
        int numberQuestion = Integer.parseInt((String) getServletContext().getAttribute("numberQuestion"));
        System.out.println(numberQuestion);
        if (check.equals(answerCorrect)) {
            anwerCorrectCurrent += 1;
            getServletContext().setAttribute("result", anwerCorrectCurrent / numberQuestion * 100);
            response.sendRedirect("playquiz.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
