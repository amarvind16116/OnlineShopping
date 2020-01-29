package pack;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import beans.User;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	boolean status=false;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email= request.getParameter("email");
		email=email.toLowerCase();
		String pwd= request.getParameter("pwd");
		HttpSession sess= request.getSession();
		SessionFactory sf=null;
		Session session=null;
		Transaction tx=null;
		PrintWriter out = response.getWriter();
		User u;
		ArrayList al;
		try
		{
			sf=new Configuration().configure().buildSessionFactory();
			session=sf.openSession();
			tx=session.beginTransaction();
			//u=(User)session.get(User.class,email);
			Query query = session.createQuery("from User where email=:i");
			query.setParameter("i", email);
			al=(ArrayList)query.list();
			Iterator itr=al.iterator();
			while(itr.hasNext())
			{
				u=(User)itr.next();
				System.out.println(u.getEmail()+""+u.getPwd());
				if(email.equals(u.getEmail())&&pwd.equals(u.getPwd()))
				{
					status=true;
				}
				else
				{
					status=false;
				}
			}
			if(status)
			{
				sess.setAttribute("user", email);
				response.sendRedirect("CheckOut.jsp");
			}
			else
			{
				out.print("<html><div class='alert alert-danger'><strong>Failure!</strong> Invalid Email or Password.</div></html>");
				RequestDispatcher rd= request.getRequestDispatcher("Login.jsp");
				rd.include(request, response);
			}
			tx.commit();
			session.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}

}
