import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/count")
public class CountServlet extends HttpServlet {
    int counter = 0;   // Can make static, but then unable to say this.counter below (in HTML text portion)

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        counter += 1;
//        PrintWriter out = response.getWriter();
//        out.println(counter += 1);
        response.getWriter().println("<h2>This page accessed " + counter + " times</h2>");
    }

//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//
//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();
//        counter++;
//        out.println(counter);
//        String num = request.getParameter("num");
//        if (num.equalsIgnoreCase("reset")) {
//            counter = 0;
//        }
//    }

}
