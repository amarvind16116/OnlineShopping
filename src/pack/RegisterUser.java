package pack;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import beans.User;

@WebServlet("/RegisterUser")
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int res;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email= request.getParameter("email");
		email=email.toLowerCase();
		String pwd= request.getParameter("pwd");
		PrintWriter out = response.getWriter();
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction transaction = null;
		try
		{
			
			sessionFactory = new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			transaction=session.beginTransaction();
			User obj = new User(fname,lname,email,pwd);
			res=(Integer)session.save(obj);
			transaction.commit();
			session.close();
			//System.out.println("data successfully inserted");
			//System.out.println();
			//response.sendRedirect("index.jsp");
		 }
		 catch(Exception ex)
		 {
			 System.out.println(ex);
		 }
		if(res>0)
		{
			out.print("<html><div class='alert alert-success'><strong>Success!</strong> You are Registered Successfully.</div></html>");
			RequestDispatcher rd=request.getRequestDispatcher("login.html");
			rd.include(request, response);
		}
		else
		{
			out.print("<html><div class='alert alert-danger'><strong>Failure!</strong> Registeration Failed.</div></html>");
			RequestDispatcher rd=request.getRequestDispatcher("login.html");
			rd.include(request, response);
		}
	}
}
