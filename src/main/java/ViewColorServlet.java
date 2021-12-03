import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/viewcolor")
public class ViewColorServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//        request.getRequestDispatcher("/viewcolor.jsp").forward(request, response);
        String color = request.getParameter("color");
        request.setAttribute("color", color);
        request.getRequestDispatcher("viewcolor.jsp").forward(request, response);

    }

//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
////        request.setAttribute("variableName", value);
//        request.setAttribute("color", "");
////        String colors = request.getParameterValues("color");
//
//        response.getWriter().println("Your color is: </h1>");
//response.getWriter().println("The number is" + ${colors} + ".");
//
////The number is ${colors}.
//
//        response.sendRedirect("/hi");
//
//    }
}
