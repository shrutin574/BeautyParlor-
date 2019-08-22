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
<title>Customer_Delete</title>
</head>
<body bgcolor="Pink">
<%

	
	Class.forName("com.mysql.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/beauty_parlour","root","root");
	   String serv_id=request.getParameter("serv_id");
	   String serv_name=request.getParameter("serv_name");
	   String cost=request.getParameter("cost");
	   
	
		  

	   
	   PreparedStatement ps=con.prepareStatement("update service set serv_name=?, cost=? where serv_id=?"); 
	 
	   ps.setString(1,serv_name);

	   ps.setString(2,cost);
	   ps.setString(3,serv_id);
	   
	  	   
	   int i=ps.executeUpdate();
	   if(i>0)
	{
		   RequestDispatcher myDispatch=request.getRequestDispatcher("php.html");
		   myDispatch.forward(request,response);



out.print("<center><a href='servdisp.jsp'><h3>CLICK HERE</h3></a>");
out.print("<br>");
out.print("<br>");
	}
	else
	{
		out.print("Enter service  Id");

out.print("<center><a href='service2.html'><h3>CLICK HERE</h3></a>");
out.print("<br>");
out.print("<br>");
	}


%>
</body>
</html>