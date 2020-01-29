package product;

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

import beans.Product;

@WebServlet("/Add_Product")
public class Add_Product extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out=response.getWriter();
		
		String product_name=request.getParameter("pname");
		String model_no=request.getParameter("model_no");
		int mrp_price=Integer.parseInt(request.getParameter("mrp_price"));
		int sell_price=Integer.parseInt(request.getParameter("sell_price"));
		String brand=request.getParameter("brand");
		int category=Integer.parseInt(request.getParameter("cat"));
		int stock=Integer.parseInt(request.getParameter("stock"));
		String img=request.getParameter("img");
		String seller=request.getParameter("seller");
		int dtime=Integer.parseInt(request.getParameter("dtime"));
		String description=request.getParameter("desc");
		HttpSession sess=request.getSession();
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction transaction = null;
		int result=0;
		//out.print(category);
		System.out.println(brand+"\n"+category);
		try
		{
			
			sessionFactory = new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			transaction=session.beginTransaction();
			Product obj = new Product(product_name,model_no,mrp_price,sell_price,brand,category,stock,img,seller,dtime,description);
			result=(Integer)session.save(obj);
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
			
		if(result>0)
		{
			out.print("<html><div class='alert alert-success'><strong>Success!</strong> Product Added Successfully.</div></html>");
			RequestDispatcher rd=request.getRequestDispatcher("add_product.jsp");
			rd.include(request, response);
		}
	}

}
