package product;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

@WebServlet("/Edit_Product")
public class Edit_Product extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out =response.getWriter();
		int id=Integer.parseInt(request.getParameter("p_id"));
		System.out.println("In Edit_Category");
		System.out.println("id is:- "+id);
		String product_name=request.getParameter("pname");
		String model_no=request.getParameter("model_no");
		int mrp_price=Integer.parseInt(request.getParameter("mrp_price"));
		int sell_price=Integer.parseInt(request.getParameter("sell_price"));
		String brand=request.getParameter("brand");
		int category=Integer.parseInt(request.getParameter("cat"));
		int stock=Integer.parseInt(request.getParameter("stock"));
		String img=request.getParameter("img");
		String seller=request.getParameter("seller");
		String desc=request.getParameter("desc");
		System.out.println("Desc is  :-  "+desc);
		//out.println(id);
		//out.println(cat);
		//out.println(p_id);
		SessionFactory sf=null;
		Session session=null;
		Transaction tx=null;
		try
		{
			sf=new Configuration().configure().buildSessionFactory();
			session=sf.openSession();
			tx=session.beginTransaction();
			Query query=session.createQuery("update Product set product_name=:b,model_no=:c,mrp_price=:d,sell_price=:e,brand=:f,category=:g,stock=:h,img=:i,seller=:j where product_id=:k"); 
			query.setParameter("b",product_name);
			query.setParameter("c",model_no);
			query.setParameter("d",mrp_price);
			query.setParameter("e",sell_price);
			query.setParameter("f",brand);
			query.setParameter("g",category);
			query.setParameter("h",stock);
			query.setParameter("i",img);
			query.setParameter("j",seller);
			//query.setParameter("m",desc);	,desc=:m
			query.setParameter("k",id);
			query.executeUpdate();  
			response.sendRedirect("ViewAllProducts.jsp");
			tx.commit();
			session.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
