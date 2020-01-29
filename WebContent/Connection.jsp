<%@ page import="java.util.*,java.sql.*"%> 
<html>
<body>
<% 
	String url="jdbc:mysql://localhost/onlineshopping";
	String uname="root";
	String pass="16116";
	Connection con = null;
	PreparedStatement ps=null;
	ResultSet rs;

	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection(url,uname,pass);

%>
</body>
</html>