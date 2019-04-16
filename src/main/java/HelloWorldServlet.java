import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/hello-world")
public class HelloWorldServlet extends HttpServlet {


//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//
//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();
//        out.println("<h1>Hello, World!</h1>");
//
//    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String name = request.getParameter("name");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        if (name == null) {
            name = "World";
        }
        out.println("<h1>Hello, " + name + "!</h1>");

//      Use this url first --> http://localhost:8080/hello-world
//      Use this url second --> http://localhost:8080/hello-world?name=Dwight
    }


//    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
//
//    }
}
