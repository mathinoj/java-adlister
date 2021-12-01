import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        String searchQuery = req.getParameter("name");
        PrintWriter out = res.getWriter();
//        out.println("<h1>Hello, World!</h1>");
//        String searchQuery = req.getParameter("name");

        if(searchQuery != null){
            out.println("<h1>Hello! It's your world, " +searchQuery+ ".</h1>"); //this changes the webpage dynamically
            // means query string will start
            //q is the query name
            //= provides the value
        }else{
            out.println("<h1>Hello, World.</h1>");
        }






    }
}
