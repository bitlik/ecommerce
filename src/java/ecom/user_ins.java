/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecom;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ezjosbh
 */
public class user_ins extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
         String n1=request.getParameter("uname");
String n2=request.getParameter("unumber");
String n3=request.getParameter("uAddress");
String n4=request.getParameter("uemail");
String n5=request.getParameter("upwd");
String n6=request.getParameter("c1");
Long t=Long.parseLong(n2);
session.setAttribute("n4",n4);
 response.setContentType("text/html");
    PrintWriter out = response.getWriter();

  
                
                try
                {
                     Connection con=null; 
                     Class.forName("com.mysql.jdbc.Driver");
                     con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ec","root","admin");
            PreparedStatement ps=null;
            if(n6.equals("customer"))
            {     
             ps=con.prepareStatement("insert into user_info(uname,uphone,address,email_id,pwd) values(?,?,?,?,?)"); 
ps.setString(1,n1 );
ps.setLong(2, t);
ps.setString(3,n3 );
ps.setString(4,n4 );
ps.setString(5,n5 );
 int i=ps.executeUpdate();
 out.print(i);
 if(i>=0)
{
    
   RequestDispatcher rd=request.getRequestDispatcher("Insertt.jsp");  
     rd.forward(request, response);  
}
else
{
 
      RequestDispatcher rd=request.getRequestDispatcher("Merror.jsp");  
           rd.forward(request, response);  
}

            }
else
         {
             
             ps=con.prepareStatement("insert into seller_info(sname,sphone,saddress,semail_id,spwd) values(?,?,?,?,?)"); 
ps.setString(1,n1 );
ps.setLong(2, t);
ps.setString(3,n3 );
ps.setString(4,n4 );
ps.setString(5,n5 );
 int i=ps.executeUpdate();                   
if(i>=0)
{
    
   RequestDispatcher rd=request.getRequestDispatcher("Insertt.jsp");  
     rd.forward(request, response);  
}
else
{
    out.println("error");
      RequestDispatcher rd=request.getRequestDispatcher("Merror.jsp");  
            rd.forward(request, response);  
}
         }
                }
                catch(Exception e)
                {
                    
                }
    }
}


