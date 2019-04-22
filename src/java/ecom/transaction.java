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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ezjosbh
 */
public class transaction extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html");
        
    PrintWriter out = response.getWriter();
 HttpSession session = request.getSession();
 String t1=(String) session.getAttribute("a");
  String t2=(String) session.getAttribute("c");                       
  String t3=(String) session.getAttribute("d");
  String t4=(String) session.getAttribute("e");
  String t5 = (String)session.getAttribute("g");
                       
                try
                {
                     Connection con=null; 
                     Class.forName("com.mysql.jdbc.Driver");
                     con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ec","root","admin");
           
                     PreparedStatement ps=null;   
             ps=con.prepareStatement("insert into transaction(name,address,mode,pname,bill)values(?,?,?,?,?)"); 
ps.setString(1,t1 );
ps.setString(2, t2);
ps.setString(3,t3);
ps.setString(4,t4 );
ps.setString(5,t5);

 int i=ps.executeUpdate();
 
 if(i>=0)
{
    out.println("added  successfully");
    out.println("<a href='afterlogin.jsp'>Back</a>");
    
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


