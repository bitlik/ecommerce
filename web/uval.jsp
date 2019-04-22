
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
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
String n1=request.getParameter("uname");
String n2=request.getParameter("psw");
Connection con = null;
try{ 
Class.forName("com.mysql.jdbc.Driver"); 
con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ec","root","admin"); 
 
         PreparedStatement statement = con.prepareStatement("select uname, pwd from user_info where uname =? and pwd=?");
            statement.setString(1, n1);
            statement.setString(2, n2);
            ResultSet result = statement.executeQuery();
            if(result.next()){
                session.setAttribute("n1",n1);
                response.sendRedirect("index.jsp");
                
            }else{
                out.println("username and password are incorrect");
            }
      con.close();
       }catch(Exception e){
            System.out.println("DB related Error");
            e.printStackTrace();
        }   
        
        %>
    </body>
</html>