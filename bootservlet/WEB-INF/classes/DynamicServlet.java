import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/magic")
public class DynamicServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String option = request.getParameter("option");
		request.setAttribute("grad", "0.3");
		request.setAttribute("color", "white");
		request.setAttribute("display", "none");

		try {
			switch (option) {
				case "apples":
					request.setAttribute("img", "apples.jpg");
					request.setAttribute("jumboText", "<h1>Yay, Apple it is!</h1>");
					break;

				case "oranges":
					request.setAttribute("img", "oranges.jpg");
					request.setAttribute("jumboText", "<h1>Yay, Orange it is!</h1>");
					break;

				case "strawberries":
					request.setAttribute("img", "strawberries.jpg");
					request.setAttribute("jumboText", "<h1>Yay, Strawberries it is!</h1>");
					break;

				case "salad":
					request.setAttribute("img", "salad.jpg");
					request.setAttribute("jumboText", "<h1>Yay, A Fruit Salad!</h1>");
					break;

				default:
					request.setAttribute("jumboText", "No Fruit for you!");
					break;
			}
		} catch (NullPointerException e) {
			request.setAttribute("jumboText", "<h1>No Fruit for you!</h1>");
			request.setAttribute("grad", "0.0");
			request.setAttribute("color", "inherit");
		}

		request.getRequestDispatcher("index.jsp").forward(request, response);

	}
}