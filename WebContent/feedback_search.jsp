<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
      <%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<style>
body{
     font-family:sans-serif;
     font-size:1em;
    }
table{
      width:88%;
     }    
table,th,td{
      border:1px solid black;
      border-collapse:collapse;
      opacity:0.95;
     }    
th,td{
      padding:10px;
      text-align:center;
     }  
th{
   background-color:#0000;
   color:black;
  }   
tr:nth-child(even)
    {
      background-color:;
    }  
tr:nth-child(odd)
    {
      background-color:white;
    }           
</style>
</head>
<body>
	<%
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/beauty_parlour", "root", "root");
	%>

<table align="center">
      <tr>
      <td colspan="7"><h1>FEEDBACK DETAILS!!!!</h1></td>
      </tr>
      <tr>
        <th>CUSTOMER ID</th>
      
       <th>SERVICE ID</th>
           
           <th>COMMENT</th>
          
          
           
      </tr>



<%
String serv_id =request.getParameter("serv_id");

	
	PreparedStatement ps = con.prepareStatement( "select * from feedback where serv_id=? ");
	ps.setString(1,serv_id);
	
	ResultSet rs = ps.executeQuery();
	while (rs.next()) {
%>
<tr bgcolor="white">
<td><%=rs.getString(1) %></td>
	<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>

</tr>
<%
	}
%>

</body>
</html>




