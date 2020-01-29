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
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import beans.Product;
import cart.ShoppingCart;
//url pattern /somedata
public class ViewProductByCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// lTODO Auto-generated method stub
		HttpSession sess = request.getSession(true);
		ShoppingCart cart = (ShoppingCart)sess.getAttribute("cart");
			// If the user has no cart, create a new one
		    if (cart == null) {
		    	cart = new ShoppingCart();
		        sess.setAttribute("cart", cart);
		        }
		    /*String exp=(String)request.getAttribute("cart");
		    System.out.println(exp);*/
		Product p=null;
		int category=Integer.parseInt(request.getParameter("category"));
		/*HttpSession sess=request.getSession();
		if(sess.getAttribute("cart")==null)// not use .equals
		{
			sess.setAttribute("cart",cart);
		}*/
		SessionFactory sf=null;
		Session session=null;
		Transaction tx=null;
		ArrayList obj=new ArrayList();
		
		try
		{
			sf=new Configuration().configure().buildSessionFactory();
			session=sf.openSession();
			tx=session.beginTransaction();
			Criteria c=session.createCriteria(Product.class); 
			c.add(Restrictions.eq("category",category));
			obj= (ArrayList) c.list();
			sess.setAttribute("products", obj);
			tx.commit();
			session.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
