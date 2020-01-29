package cart;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Product;
import product.ViewProductById;

@WebServlet("/Cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//static ArrayList cart= new ArrayList();
	ShoppingCart cart = new ShoppingCart();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		//BookDao bd=new BookDao();
		ViewProduct obj=new ViewProduct();
		if(request.getParameter("action").equals("add"))
		{
			System.out.println("In If\n");
			String Product_id=request.getParameter("product_id");
			System.out.println(Product_id);
			try
			{
				if (Product_id != null) 
				{
		            Product prod = (Product)obj.getProduct(Integer.parseInt(Product_id));
		            if(cart.add(Product_id, prod))
		            {
		            	session.setAttribute("cart", cart);
			            response.sendRedirect("CartDetails");
		            }
		            else
		            {
		            	System.out.println("Cart val : "+cart);
		            	//session.setAttribute("cart", cart);
		            	System.out.println("Cart val 2 : "+cart);
		            	out.print("<html><div class='alert alert-danger'><strong>Failure!</strong> Sorry "+prod.getProduct_name()+" Item is out of Stock.</div></html>");
		    			RequestDispatcher rd=request.getRequestDispatcher("CartDetails");
		    			rd.include(request, response);
		            }
		            
		        }
			}
			catch(Exception e){System.out.println(e);}
		}
		if(request.getParameter("action").equals("remove"))
		{
			System.out.println("In Else IF");
			String Product_id =request.getParameter("product_id");
			System.out.println("Product_id is:- "+Product_id);
			if (Product_id != null) {
	            cart.remove(Product_id);
	        }
	        session.setAttribute("cart", cart);
	        response.sendRedirect("CartDetails");
		}
    }
		
	}