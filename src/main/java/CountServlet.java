import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="CountServlet", urlPatterns="/count")
public class CountServlet extends HttpServlet {
    int visits = 0;

    protected void doGet(HttpServletRequest reqNum, HttpServletResponse resNum) throws IOException{
    visits++;
    resNum.getWriter().println("Visits = " +visits);

//        resNum.sendRedirect("/count");



    }
}
