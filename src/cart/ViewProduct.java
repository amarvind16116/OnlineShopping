package cart;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import beans.Product;

public class ViewProduct {
	
	
	public Product getProduct(int p_id)
	{
	System.out.println("id is: "+p_id);
	Product p=null;
	ArrayList obj=new ArrayList();
	SessionFactory sf=null;
	Session session=null;
	Transaction tx=null;
	try
	{
		sf=new Configuration().configure().buildSessionFactory();
		session=sf.openSession();
		tx=session.beginTransaction();
		Criteria c=session.createCriteria(Product.class); 
		c.add(Restrictions.eq("product_id",p_id));
		//c.addOrder(Order.desc("time"));
		//c.setMaxResults(4);
		obj= (ArrayList) c.list();
		Iterator itr=obj.iterator();
		while(itr.hasNext())
		{
			p = (Product)itr.next();
			System.out.println(p.getImg());
		}
		tx.commit();
		session.close();
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	return p;
	}

}
