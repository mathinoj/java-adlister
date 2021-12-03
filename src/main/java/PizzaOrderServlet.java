import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/pizza-order")
public class PizzaOrderServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException //always needs request and response
    {
        request.getRequestDispatcher("/pizza-order.jsp").forward(request, response);
    }
//the request&response are being forwarded to JSP, So when user logs in to order pizza its a git request and send them to JSP with the form on it


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        System.out.println(request.getParameter("crustSelect"));
        System.out.println(request.getParameter("sauceSelect"));
        String[] toppings = request.getParameterValues("toppings");
        for(String topping: toppings){ //enhanced for loop
            System.out.println(topping);
            System.out.println("");
        }
        System.out.println("");
        System.out.println(request.getParameter("address"));

        response.sendRedirect("/hi");

    }

    //this is where the method, doPost, is being used to take info from form
}
