<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="javax.servlet.*" %>
    <%@ page import="javax.servlet.http.*" %>
    <%@ page import="java.sql.*" %>
   
    
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer_Update</title>
</head>
<body bgcolor="Pink">
<%

	
	Class.forName("com.mysql.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/beauty_parlour","root","root");
	  
	   String cust_name=request.getParameter("cust_name");
	   
	   String phone_no=request.getParameter("phone_no");
	   String email=request.getParameter("email");  
	   String password=request.getParameter("password");
	   String uname=request.getParameter("username");
	   PreparedStatement ps=con.prepareStatement("update customer set cust_name=?,phone_no=?,email=?,password=? where username=?"); 
	  
	   ps.setString(1,cust_name);
	  
	   ps.setString(2,phone_no);
	   ps.setString(3,email);
	   ps.setString(4,password); 
	   ps.setString(5,uname);
	   int i=ps.executeUpdate();
	   if(i>0)
	{
		  
 out.println("<center>updated successfully!!!");
out.print("<center><a href='custdisp.jsp'><h3>PLEASE CLICK HERE TO VIEW CUSTOMER</h3></a>");
out.print("<br>");
out.print("<br>"); 
	}
	else
	{
		 out.println("<center>oops failed!!!");
		 out.print("<center><a href='custupdate.html'><h3>TO TRY AGAIN</h3></a>");
	}


%>
</body>
</html>