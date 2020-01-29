package pack;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/lgout")
public class Logout extends HttpServlet
{
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException
	{
			//res.sendRedirect("welcome.jsp");
		HttpSession session=req.getSession();
		session.removeAttribute("email");
		session.invalidate();
		res.sendRedirect("AdminLogin.html");
		//res.sendRedirect("index.html");
	}
	
}