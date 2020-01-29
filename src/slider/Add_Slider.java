package slider;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import beans.Category;
import beans.Slider;

@WebServlet("/Add_Slider")
public class Add_Slider extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out=response.getWriter();
		String img=request.getParameter("img");
		HttpSession sess=request.getSession();
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction transaction = null;
		try
		{
			
			sessionFactory = new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			transaction=session.beginTransaction();
			Slider obj = new Slider(img);
			session.save(obj);
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
			
		out.print("<html><div class='alert alert-success'><strong>Success!</strong> Slider Image Added Successfully.</div></html>");
		RequestDispatcher rd=request.getRequestDispatcher("add_slider.jsp");
		rd.include(request, response);
	}

}
