package orders;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
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

@WebServlet("/AddOrderServlet")
public class AddOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction transaction = null;
		HttpSession sess=request.getSession();
		ShoppingCart obj=(ShoppingCart)sess.getAttribute("cart");
		Iterator itr=obj.getItems().iterator();
		Product p=null;
		int result=0;
		Order o=null;
		Calendar cal=Calendar.getInstance();
		DateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
		Date date=new Date();
		try
		{
			
			sessionFactory = new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			transaction=session.beginTransaction();
			while(itr.hasNext())
			{
				ShoppingCartItem item=(ShoppingCartItem)itr.next();
				p=(Product)item.getItem();
				o = new Order(p.getProduct_name(),cal.getTime(),date,item.getQuantity(),p.getSell_price());
		        String Product_id=Integer.toString(p.getProduct_id()); // or String.valueOf(int)
				/*obj.remove(Product_id);*/
			}
			result=(Integer)session.save(o);
			transaction.commit();
			session.close();
			//sess.setAttribute("cart", null);
			//System.out.println("data successfully inserted");
			//System.out.println();
		 }
		 catch(Exception ex)
		 {
			 System.out.println(ex);
		 }
		if(result>0)
		{
			/*out.print("<html><div class='alert alert-danger'><strong>Success!</strong> You have Successfully Ordered "+p.getProduct_name()+"</div></html>");
			RequestDispatcher rd=request.getRequestDispatcher("Mail");
			rd.forward(request, response);*/
			response.sendRedirect("Mail");
		}
	}

}