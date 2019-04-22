/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecom;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
public class Diswishlist extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       Connection con=null;
        HttpSession session = request.getSession();
        
        response.setContentType("text/html");
        
    PrintWriter out = response.getWriter();
    String b=(String) session.getAttribute("n1");
         out.println(b);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ec","root","admin");
            PreparedStatement statement = con.prepareStatement("select * from wishlist where uname=?");
            
            statement.setString(1, b);
            ResultSet rs = statement.executeQuery();
           out.println("<center> <table border='1'>");
             out.println("<th>User name</th><th>product name</th>");    
 
             
             while(rs.next())
       {
        // int n2=rs.getInt(1);
          //session.setAttribute("n2", n2);
           out.println("  <tr>"); 
 out.println("<td>" +rs.getString(1));
out.println("</td>" );
out.print("<td>" +rs.getString(2));
out.println("</td>");
       }
             out.println("</tr>");
out.println("</table><br/>");
    
        }
        catch(Exception e)
        {
            System.out.print(e);
}
        }    
    }  
        


