/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
public class delete extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
 response.setContentType("text/html");
    PrintWriter out = response.getWriter();
 HttpSession session = request.getSession();
        
   int t2= (int) session.getAttribute("n2");
                
                try
                {
                     Connection con=null; 
                     Class.forName("com.mysql.jdbc.Driver");
                     con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ec","root","admin");
            PreparedStatement ps=null;
    
             ps=con.prepareStatement("update inventory set quantity=quantity-1 where pid=? and quantity>0"); 
ps.setInt(1,t2);
 int i=ps.executeUpdate();

           if(i>=0)
{
    out.println("done");
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



   
