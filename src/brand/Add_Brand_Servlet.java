package brand;

import java.io.IOException;
import java.io.PrintWriter;

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

import beans.Brand;
import beans.Category;

@WebServlet("/Add_Brand_Servlet")
public class Add_Brand_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out=response.getWriter();
		String brand_name=request.getParameter("brand");
		String brand_logo=request.getParameter("blogo");
		int brand_pid=Integer.parseInt(request.getParameter("p_id"));
		HttpSession sess=request.getSession();
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction transaction = null;
		out.print(brand_pid);
		try
		{
			
			sessionFactory = new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			transaction=session.beginTransaction();
			Brand obj = new Brand(brand_name,brand_logo,brand_pid);
			session.save(obj);
			transaction.commit();
			session.close();
			//System.out.println("data successfully inserted");
			//System.out.println();
			//response.sendRedirect("index.jsp");
		 }
		 catch(Exception ex)
		 {
			 System.out.println(ex);
		 }
			
		out.print("<html><div class='alert alert-success'><strong>Success!</strong> Brand Added Successfully.</div></html>");
		RequestDispatcher rd=request.getRequestDispatcher("add_brand.jsp");
		rd.include(request, response);
	}

}
