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

/**
 *
 * @author ezjosbh
 */
public class productadded extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String n1=request.getParameter("pname");
String n2=request.getParameter("quantity");
String n3=request.getParameter("price");
String n4=request.getParameter("des");
String n5=request.getParameter("sid");
String n6=request.getParameter("sname");
String n10=request.getParameter("cat");

int n7=Integer.parseInt(n2);
int n8=Integer.parseInt(n3);
int n9=Integer.parseInt(n5);
 response.setContentType("text/html");
    PrintWriter out = response.getWriter();

  
                
                try
                {
                     Connection con=null; 
                     Class.forName("com.mysql.jdbc.Driver");
                     con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ec","root","admin");
            PreparedStatement ps=null;   
             ps=con.prepareStatement("insert into inventory(pname,quantity,price,des,sid,sname,category) values(?,?,?,?,?,?,?)"); 
ps.setString(1,n1 );
ps.setInt(2, n7);
ps.setInt(3,n8 );
ps.setString(4,n4 );
ps.setInt(5, n9);
ps.setString(6,n6 );
ps.setString(7, n10);
 int i=ps.executeUpdate();
 
 if(i>=0)
{
    out.println("success");
    out.println("<a href='./seller'>Back</a>");
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


