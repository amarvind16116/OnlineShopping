<%@ page import="java.sql.*" %>
<%
	String name;
	
	name = request.getParameter("query");
	try
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql:///onlineshopping","root","16116");
		Statement stmt = con.createStatement();
		String sqlquery = "select p_id,product_name from products where product_name like'"+name+"%'";
		ResultSet rs = stmt.executeQuery(sqlquery);
		boolean valid=false;
		String str="";
		int id=0;
		int count=0;
		while(rs.next())
		{
				/* str=str+"<tr><td>"+rs.getString(1)+"</td></tr>"; */
				id=rs.getInt("p_id");
				out.println("<table border=0><tr> <a href='ViewProductById?id="+id+"'>"+rs.getString("product_name")+"</a></tr><br><br></table>") ;
				count++;
				if(count==7)
				{
					break;
				}
	 	}
			/* out.println("<table border=0><a href='ViewProductById?id='+id +'>"+str+"</a></table>") ; */
			
		
		
		

	}
	catch(Exception e)
	{
		out.println("Error : " + e);
	}
%>