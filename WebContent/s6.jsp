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
String b=request.getParameter("username");
String d=request.getParameter("serv_name");
String comment=request.getParameter("comment");
Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/beauty_parlour","root","root");
 PreparedStatement ps=con.prepareStatement("insert into feedback values(?,?,?)");
 ps.setString(1,b);
 ps.setString(2,d);
 ps.setString(3,comment);
 int i=ps.executeUpdate();
 if(i>0)
 {
	 out.println("success fully given feedback");

out.print("<center><a href='customer_homepage.html'><h3>CLICK HERE</h3></a>");
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