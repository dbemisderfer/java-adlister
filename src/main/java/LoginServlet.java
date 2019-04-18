import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        HttpSession session = request.getSession();

        if (request.getSession().getAttribute("username") != null) {
            response.sendRedirect("/profile"); //used to direct a currently logged in user straight to their profile
        } else { //can alternatively use a 'return' statement here (inside the 'if'), rather than 'else' [works like a break in a switch statement
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }  // getRequestDispatcher only works with files, while sendRedirect works with URLs

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean validAttempt = username.equals("admin") && password.equals("password");

        if (validAttempt) {
//            HttpSession session = request.getSession();
//            session.setAttribute("user", username); // same as below, but more verbose
            request.getSession().setAttribute("username", username); //used on profile.jsp & for logging in
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login");
        }



    }
}
