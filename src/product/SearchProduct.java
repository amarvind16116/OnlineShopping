package product;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import beans.Product;


public class SearchProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out =response.getWriter();
		int id=Integer.parseInt(request.getParameter("id"));
		Product p=null;
		HttpSession sess=request.getSession();
		SessionFactory sf=null;
		Session session=null;
		Transaction tx=null;
		try
		{
			sf=new Configuration().configure().buildSessionFactory();
			session=sf.openSession();
			tx=session.beginTransaction();
			p=(Product)session.get(Product.class,id);
			//session.delete(e);
			ArrayList al=new ArrayList();
			al.add(p);
			Iterator itr=al.iterator();
			while(itr.hasNext())
			{
				p=(Product)itr.next();
				//out.println("<html><body><table><tr><td>"+b.getBook_id()+"</td></tr></table></body></html>");
				System.out.println("Hello"+p.getProduct_id());
			}
			sess.setAttribute("product", al);
			//response.sendRedirect("book_detail.jsp");
			tx.commit();
			session.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
