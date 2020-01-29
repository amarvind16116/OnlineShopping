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

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import beans.Product;
// url = /ViewProductByBrand
public class ViewProductByBrand extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		Product p=null;
		String brand=request.getParameter("brand");
		//out.println(brand);
		HttpSession sess=request.getSession();
		SessionFactory sf=null;
		Session session=null;
		Transaction tx=null;
		ArrayList obj=new ArrayList();
		//out.print(brand);
		try
		{
			sf=new Configuration().configure().buildSessionFactory();
			session=sf.openSession();
			tx=session.beginTransaction();
			Criteria c=session.createCriteria(Product.class); 
			c.add(Restrictions.eq("brand",brand));
			//c.addOrder(Order.desc("time"));
			//c.setMaxResults(4);
			obj= (ArrayList) c.list();
			Iterator itr=obj.iterator();
			while(itr.hasNext())
			{
				p=(Product)itr.next();
				//System.out.println(p.getProduct_name());
				//out.println(p.getProduct_name());
			}
			sess.setAttribute("products", obj);
			tx.commit();
			session.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		response.sendRedirect("View_Products");
	}

}
