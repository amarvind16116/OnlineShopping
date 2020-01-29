package product;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import beans.Product;
//url pattern ViewProductById
public class ViewProductById extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println("In Servlet");
		System.out.println("id is: "+id);
		Product p=null;
		PrintWriter out=response.getWriter();
		ArrayList obj=new ArrayList();
		HttpSession sess=request.getSession();
		SessionFactory sf=null;
		Session session=null;
		Transaction tx=null;
		try
		{
			sf=new Configuration().configure().buildSessionFactory();
			session=sf.openSession();
			tx=session.beginTransaction();
			Criteria c=session.createCriteria(Product.class); 
			c.add(Restrictions.eq("product_id",id));
			//c.addOrder(Order.desc("time"));
			//c.setMaxResults(4);
			obj= (ArrayList) c.list();
			/*Iterator itr=obj.iterator();
			while(itr.hasNext())
			{
				p = (Product)itr.next();
			}*/
			sess.setAttribute("item", obj);
			response.sendRedirect("CustomURL");
			tx.commit();
			session.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
