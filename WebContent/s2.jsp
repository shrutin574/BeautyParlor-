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
String cust_id=request.getParameter("cust_id");
String cust_name=request.getParameter("cust_name");
String phone_no=request.getParameter("phone_no");
String email=request.getParameter("email");
String name=request.getParameter("username");
String pass=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/beauty_parlour","root","root");
 PreparedStatement ps=con.prepareStatement("insert into customer values(?,?,?,?,?,?)");
 ps.setString(1,cust_id);
 ps.setString(2,cust_name);
 ps.setString(3,phone_no);
 ps.setString(4,email);
 ps.setString(5,name);
 ps.setString(6,pass);

 int i=ps.executeUpdate();
 if(i>0)
 {
	 out.println("<center><h1>successfully registered</h2>");


out.print("<center><a href='php.html'><h3>BACK</h3></a>");
out.print("<br>");
out.print("<br>");
 }
 else
 {
	 out.println("regestration failed");
 }
%>
</body>

</html>