
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<script>
</script>
</head> 
<body>
   

<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="com.mysql.jdbc.Driver"%> 
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<%
Connection con = null;
try
{        
Class.forName("com.mysql.jdbc.Driver"); 
con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ec","root","admin"); 
String p=request.getParameter("name");
String q=request.getParameter("number");
  String r=request.getParameter("address");
  String s=request.getParameter("pay");
//String t=request.getParameter("t1");
//String u=request.getParameter("quantity");
 Long m=Long.parseLong(q); 
 //int n=Integer.parseInt(u);
    PreparedStatement ps6=con.prepareStatement("insert into bill values(?,?,?,?)"); 
 ps6.setString(1, p);
 ps6.setLong(2, m);
  ps6.setString(3, r);
  ps6.setString(4, s);
  
 // ps6.setString(5, t);
  //ps6.setInt(6, n);
  int kk=ps6.executeUpdate();
if(kk>0)
            { 
    //response.sendRedirect("genbill1.jsp");
PreparedStatement ps=con.prepareStatement("select * from bill where name=?" );

ps.setString(1, p);
ResultSet rs=ps.executeQuery();

if(rs.next()){
String a=rs.getString(1);
//out.println(a);
 Long b=rs.getLong(2);
 String c=rs.getString(3);
 String d=rs.getString(4);   
   //String e=rs.getString(5);
   //int f=rs.getInt(6);
   session.setAttribute("a",a);
   
   session.setAttribute("c",c);
   session.setAttribute("d",d);
  // session.setAttribute("e",e);
    
    %>
            
           <form name="f1"   >
 
<table cellpadding="5" cellspacing="5" align="center" class="table table-striped">
<tr>
<td>Name:</td>
<td><%out.print(rs.getString(1));%></td>
</tr>
<tr>
<td>Contact:</td>
<td><%out.print(rs.getLong(2));%>
</td>
</tr>
<tr>
<td> Address:</td>
<td><%out.print(rs.getString(3));%>
</td>
</tr>
<tr>
<td>Payment Mode:</td>
<td><%out.print(rs.getString(4));%></td>
</tr>

<tr>
<td>Bill:</td>
<%   
                }                              

 PreparedStatement ps1= con.prepareStatement("select sum(price) from cart where uname=?");
  ps1.setString(1, p);
            ResultSet res=ps1.executeQuery();
       if(res.next())  
                  { 
String g=res.getString(1);
session.setAttribute("g",g);
%>
<td><%out.print(res.getString(1));%></td> </tr>
<tr>
<br/>
<a href="./transaction?">Transaction</a> 
</tr> 
 
<% } 
                     }             
  else
           {
      out.print("error");
           }
                       
   }
  catch(Exception e){ 
System.out.print(e); 
e.printStackTrace(); 
} 
    %>
   
    
  </table>
    </form>
    

 
</body> 
</html>
  
  
  
  
  