package product;

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

import beans.Product;

public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		// TODO Auto-generated method stub
		
		int pro_id=Integer.parseInt(request.getParameter("id"));
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
			Product p=(Product)session.get(Product.class,pro_id);
			session.delete(p);
			transaction.commit();
			session.close();
		 }
		 catch(Exception e)
		 {
			 System.out.println(e);
		 }
		out.print("<html><div class='alert alert-success'><strong>Success!</strong> Product Deleted Successfully.</div></html>");
		RequestDispatcher rd=request.getRequestDispatcher("view_product.jsp");
		rd.include(request, response);
	}

}
