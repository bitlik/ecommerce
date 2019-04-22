<%-- 
    Document   : addcart
    Created on : Nov 10, 2017, 11:28:02 AM
    Author     : ezjosbh
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="com.mysql.jdbc.Driver"%> 
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<%
Connection con = null;
PreparedStatement ps=null;
try
{        
Class.forName("com.mysql.jdbc.Driver"); 
con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ec","root","admin"); 
 String price=(String)session.getAttribute("price");
 String name=(String)session.getAttribute("name");
 String pname=(String)session.getAttribute("pname");
 int p=Integer.parseInt(price);
  ps=con.prepareStatement("insert into cart values(?,?,?)"); 
ps.setString(1,name );
ps.setString(2, pname);
ps.setInt(3, p);
 int i=ps.executeUpdate();
 if(i>=0)
{
    out.println("added to cart successfully");
    out.println("<a href='afterlogin.jsp'>Back</a>");
     out.println("<a href='Checkout.jsp'>place order</a>");
   //RequestDispatcher rd=request.getRequestDispatcher("Insertt.jsp");  
    //rd.forward(request, response);  
}
else
{
    out.println("error");
      //RequestDispatcher rd=request.getRequestDispatcher("Merror.jsp");  
        //    rd.forward(request, response);  
}

         
                }
                catch(Exception e)
                {
                    
                }

    }
}


%>
   
