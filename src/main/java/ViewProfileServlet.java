import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.getRequestDispatcher("/profile.jsp").forward(request, response);
        HttpSession currentSession = request.getSession();


        if ((boolean) currentSession.getAttribute("isAdmin")) {
            System.out.println(currentSession.getAttribute("isAdmin"));
            request.setAttribute("adminView", true);
        }

        System.out.println(currentSession.getAttribute("isAdmin"));

        request.setAttribute("adminView", false);
        request.getRequestDispatcher("/profile.jsp").forward(request, response);
    } else if (username.equals("ken" && password.equals("password")){
        currentSession.setAttribute("adminView", true);
        }

    System.out.println(currentSession.getAttribute("isAdmin"));
    request.setAttribute("adminView", (boolean) false);
        request.getRequestDispatcher("/profile.jsp").forward(request, response);
    }
}