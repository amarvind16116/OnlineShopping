package pack;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ShowCartServlet")
public class ShowCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	static HashMap cart=new HashMap();
	String action="addssss";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ItemDao it=new ItemDao();
		int item_id=Integer.parseInt(request.getParameter("id"));
		HttpSession sess=request.getSession();
		action=request.getParameter("action");
		System.out.println(action);
		/*if(action.equals("add"))
		{*/
			if(cart.containsKey(item_id))
			{
				cart.get(item_id);
				System.out.println("Item Already Exist in Cart");
			}
			else
			{
				try 
				{
					cart.put(item_id, it.getItem(item_id));
					sess.setAttribute("obj", cart);
					System.out.println("In Else"+cart);
				} 
				catch (Exception e) 
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(action.equals("delete"))
			{
				cart.remove(item_id);
			}
		
			response.sendRedirect("cart.jsp");
	}

}
