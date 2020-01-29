package brand;

import java.io.IOException;
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

import beans.Brand;

public class ViewBrandByCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Brand b=null;
		int category=Integer.parseInt(request.getParameter("category"));
		HttpSession sess=request.getSession();
		SessionFactory sf=null;
		Session session=null;
		Transaction tx=null;
		ArrayList obj=new ArrayList();
		try
		{
			sf=new Configuration().configure().buildSessionFactory();
			session=sf.openSession();
			tx=session.beginTransaction();
			Criteria c=session.createCriteria(Brand.class); 
			c.add(Restrictions.eq("brand_pid",category));
			//c.addOrder(Order.desc("time"));
			//c.setMaxResults(4);
			obj= (ArrayList) c.list();
			Iterator itr = obj.iterator();
			while(itr.hasNext())
			{
				b=(Brand)itr.next();
				System.out.println(b.getBrand_name()+b.getBrand_logo());
			}
			sess.setAttribute("brands", obj);
			tx.commit();
			session.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
