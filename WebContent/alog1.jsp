<%@page contentType="text/html" %>
<%@page pageEncoding="UTF-8" %>
<%@ page language="java" %>
<%@page language="java" import="java.sql.*" %>
<%  try {
	 
HttpSession s=request.getSession();  
String Username=request.getParameter("Username");
String Password= request.getParameter("Password");
if(Username.equals("shruti")&& Password.equals("shru"))
{	
	RequestDispatcher myDispatch = request.getRequestDispatcher("php.html");
	myDispatch.forward(request, response);
	
}

else if(Username==null||Username.equals("")||Password==null||Password.equals("")) {
out.println("<h1><b><center><br><br><br><br><br><br><br><br><font face='Imprint MT Shadow' color='black'>User Name or Password cannot be empty</center></b><br/></h1>");
	
out.print("<center><h2><font face=Century Schoolbook>To Try again</font></h2>");
out.print("<br>");
out.print("<center><a href='indexx.html'><h3>CLICK HERE</h3></a>");
out.print("<br>");
out.print("<br>");
return;

}


else{
out.println("<h1><b><center><br><br><br><br><br><br><br><br><font face='Imprint MT Shadow' color='black'>INCORRECT PASSWORD  </center></b><br/></h1>");
out.println("</center>");

out.print("<center><h2><font face=Century Schoolbook>To Try again</font></h2>");
out.print("<br>");
out.print("<center><a href='indexx.html'><h3>CLICK HERE</h3></a>");
out.print("<br>");
out.print("<br>");
}
try
{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/beauty_parlour","root", "root");
	Statement st=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	ps=con.prepareStatement("select * from admin where Username=? and Password=?");
	ps.setString(1,Username);
	ps.setString(2,Password);

	
}

catch(Exception e)
{
	out.println("data is not inserted");
}
 
}
catch(Exception e){
out.println("<h2><font face='Imprint MT Shadow' color='black'>Unable to the process the request try after some time</h2>");
}//catch

%>
