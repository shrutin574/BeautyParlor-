<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>atozknowledge.com demo loginjsp</title>
<body background="gym8.jpg">
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
	
String uname=request.getParameter("username"); 

String pwd=request.getParameter("password"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/beauty_parlour","root","root"); 
Statement st= con.createStatement();
ResultSet rs;
rs=st.executeQuery("select * from customer where username='"+uname+"' and password='"+pwd+"'"); 

if(rs.next()) 
{ 
	session.setAttribute("uname",uname); 
response.sendRedirect("customer_homepage.html");

}
else 
{ 

	
out.println("<center><h1><font face=Century Schoolbook> Oops Invalid Password !!!   Insert proper values...</font></h1></center>");
out.print("<br>");
out.print("<br>");

out.print("<center><h2><font face=Century Schoolbook>To Try again</font></h2>");
out.print("<br>");
out.print("<center><a href='direct.html'><h3>BACK</h3></a>");
out.print("<br>");
out.print("<br>");
} 

%>

</body>
</html>