package email;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

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

import beans.Order;
import beans.Product;
import cart.ShoppingCart;
import cart.ShoppingCartItem;

@WebServlet("/Mail")
public class SendMail extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("In Mail");
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction transaction = null;
		String Product_id = null;
		PrintWriter out = response.getWriter();
		HttpSession sess=request.getSession();
		/*String to=(String) sess.getAttribute("user");*/
		String to="amarvind16116@gmail.com";
		System.out.println(to);
		/*String to=request.getParameter("to");*/
		String subject="subject";
		ShoppingCart obj=(ShoppingCart)sess.getAttribute("cart");
		Iterator itr=obj.getItems().iterator();
		Product p=null;
		System.out.println("In Mail");
		System.out.println("Cart"+obj);
		try
		{
			System.out.println("In Try");
			sessionFactory = new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			transaction=session.beginTransaction();
			System.out.println("Before While");
			while(itr.hasNext())
			{
				System.out.println("IN While");
				ShoppingCartItem item=(ShoppingCartItem)itr.next();
				p=(Product)item.getItem();
		        Product_id=Integer.toString(p.getProduct_id()); // or String.valueOf(int)
				String Product_name=p.getProduct_name();
				String msg="You Have Successfully Ordered "+Product_name;
				System.out.println("To "+to+"pName "+Product_name);
				Mailer.send(to, subject, msg);
				System.out.println("End While");
				obj.remove(Product_id);
			}
			transaction.commit();
			session.close();
		 }
		 catch(Exception ex)
		 {
			 System.out.println(ex);
		 }
		finally
		{
			obj.remove(Product_id);
		}
		System.out.println(p.getProduct_name());
		out.print("<html><div class='alert alert-danger'><strong>Success!</strong> You have Successfully Ordered "+p.getProduct_name()+"</div></html>");
		RequestDispatcher rd=request.getRequestDispatcher("CartDetails");
		rd.include(request, response);
	}

}
