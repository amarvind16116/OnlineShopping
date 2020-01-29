package brand;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import beans.Brand;
import beans.Category;

public class View_Brand_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Brand b=null;
		HttpSession sess=request.getSession();
		SessionFactory sf=null;
		Session session=null;
		Transaction tx=null;
		try
		{
			sf=new Configuration().configure().buildSessionFactory();
			session=sf.openSession();
			tx=session.beginTransaction();
			Query query=session.createQuery("from Brand"); 
			ArrayList obj=(ArrayList) query.list();
			/*Iterator itr=obj.iterator();
			while(itr.hasNext())
			{
				c=(Category)itr.next();
				//out.println("<html><body><table><tr><td>"+b.getBook_id()+"</td></tr></table></body></html>");
				//System.out.println(ac.getCat());
			}*/
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
