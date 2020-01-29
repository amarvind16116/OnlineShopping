package orders;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class ViewAllOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sess=request.getSession();
		SessionFactory sf=null;
		Session session=null;
		Transaction tx=null;
		try
		{
			sf=new Configuration().configure().buildSessionFactory();
			session=sf.openSession();
			tx=session.beginTransaction();
			Query query=session.createQuery("from Order"); 
			ArrayList obj=(ArrayList) query.list();
			/*Iterator itr=obj.iterator();
			while(itr.hasNext())
			{
				//out.println("<html><body><table></table></body></html>");
				//System.out.println();
			}*/
			sess.setAttribute("orders", obj);
			
			tx.commit();
			session.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
