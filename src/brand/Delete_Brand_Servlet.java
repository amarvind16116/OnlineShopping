package brand;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import beans.Brand;
import beans.Category;

public class Delete_Brand_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int brand_id=Integer.parseInt(request.getParameter("id"));
		PrintWriter out =response.getWriter();
		//out.print(c_id);
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction transaction = null;
		
		try
		{
			
			sessionFactory = new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			transaction = session.beginTransaction();
			Brand b=(Brand)session.get(Brand.class,brand_id);
			session.delete(b);
			transaction.commit();
			session.close();
		 }
		 catch(Exception e)
		 {
			 System.out.println(e);
		 }
		out.print("<html><div class='alert alert-success'><strong>Success!</strong> Brand Deleted Successfully.</div></html>");
		RequestDispatcher rd=request.getRequestDispatcher("view_brands.jsp");
		rd.include(request, response);
	}
}
