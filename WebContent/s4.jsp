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
<%
String b=request.getParameter("serv_id");
int id=Integer.parseInt(b);
String name=request.getParameter("serv_name");
String cost=request.getParameter("cost");
String time=request.getParameter("time");
Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/beauty_parlour","root","root");
 PreparedStatement ps=con.prepareStatement("insert into service values(?,?,?,?)");
 ps.setInt(1,id);
 ps.setString(2,name);
 ps.setString(3,cost);
 ps.setString(4,time);
 int i=ps.executeUpdate();
 if(i>0)
 {
	 out.println("success fully inserted");
	  
	 out.print("<center><a href='servdisp.jsp'><h3>CLICK HERE TO VIEW</h3></a>");
out.print("<center><h2><font face=Century Schoolbook>To view click here</font></h2>");
out.print("<br>");
out.print("<center><a href='customer_homepage.html'><h3>BACK</h3></a>");
out.print("<br>");
out.print("<br>"); 
 }
 else
 {
	 out.println("not success");
 }
%>
</body>
</html>