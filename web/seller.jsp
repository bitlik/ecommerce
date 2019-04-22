<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<script>
</script>
</head> 
<body bgcolor="blue">
 
<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="com.mysql.jdbc.Driver"%> 
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
  <%
try
{
       String t=(String)session.getAttribute("n1");
Connection con = null;       
Class.forName("com.mysql.jdbc.Driver"); 
con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hdb","root","admin"); 
PreparedStatement ps=con.prepareStatement("select * from  seller_info where sname=?");
ps.setString(1, t);
ResultSet rs=ps.executeQuery();%>
<table align="center" border="1"> 
    <th> product id:</th> <th> product name:</th><th>Quantity:</th><th> price:</th><th> sid</th><th>sname:</th>
<%while(rs.next()){
%>
          

<h3>   
 

    <tr>
<td><%out.print(rs.getInt(1));%>
</td>
<td><%out.print(rs.getString(2));%></td>
<td><%out.print(rs.getInt(3));%>
    <td><%out.print(rs.getInt(4));%>
        <td><%out.print(rs.getInt(5));%>
            <td><%out.print(rs.getInt(6));%>
                <td><%out.print(rs.getInt(7));%>
                <td><%out.println("<a  href='/add'>update</a> <a  href='./add'>delete</a>");%></td>

</tr

<% } 
                       
  
                       
   }
  catch(Exception e){ 
System.out.print(e); 
e.printStackTrace(); 
} 
    %>
    </h3>