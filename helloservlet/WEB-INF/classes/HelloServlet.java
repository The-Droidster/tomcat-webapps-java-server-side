import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter writer = response.getWriter();	
		response.setContentType("text/html");
		writer.println("<!DOCTYPE html>");
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>HelloWorld</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<center><h2>Hello, World!</h2></center>");
		writer.println("</body>");
		writer.println("</html>");
	}
}