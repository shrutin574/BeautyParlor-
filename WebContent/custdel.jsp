<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.http.*,javax.servlet.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTMLN4.01 Transition//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body  background="u27.jpg" >
<%
String b=request.getParameter("cust_id");

Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/beauty_parlour","root","root");
 PreparedStatement ps=con.prepareStatement("delete  from customer where cust_id=?");
 ps.setString(1,b);
 int i=ps.executeUpdate();
 if(i>0)
 {
	 out.println("<center>successfully deleted");
		
	 

	 out.print("<center><h2><font face=Century Schoolbook></font></h2>");
	 out.print("<br>");
	 out.print("<center><a href='php.html'><h3>CLICK HERE</h3></a>");
	 out.print("<br>");
	 out.print("<br>");
 }
 else
 {
	 out.println("<center>oops failed!!");
	 out.print("<center><a href='custdel.html'><h3>CLICK HERE</h3></a>");
	 out.print("<br>");
	 out.print("<br>");
 }
%>
</body>
</html>