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
public class seller extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       Connection con=null;
        HttpSession session = request.getSession();
        
        response.setContentType("text/html");
        
    PrintWriter out = response.getWriter();
    String b=(String) session.getAttribute("n1");
         
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ec","root","admin");
            PreparedStatement statement = con.prepareStatement("select * from inventory where sname=?");
            
            statement.setString(1, b);
            ResultSet rs = statement.executeQuery();
           out.println("<center> <table border='1'>");
             out.println("<th>product id</th><th>product name</th><th>Quantity</th><th>price</th><th>description</th><th>sid</th><th>sname</th><th>category</th><th>Options</th>");    
 
             
             while(rs.next())
       {
         int n2=rs.getInt(1);
          session.setAttribute("n2", n2);
           out.println("  <tr>"); 
 out.println("<td>" +rs.getInt(1));
out.println("</td>" );
out.print("<td>" +rs.getString(2));
out.println("</td>");
out.print("<td>" +rs.getInt(3));
out.println("</td>");
out.print("<td>" +rs.getInt(4));
out.println("</td>");
out.print("<td>" +rs.getString(5));
out.println("</td>");
out.print("<td>" +rs.getInt(6) );
out.println("</td>");
out.print("<td>" +rs.getString(7));
out.println("</td>");
out.print("<td>" +rs.getString(8));
out.println("</td>");
out.println(" <td>  <a href='./add'>Update</a> <a href='./delete'>Delete</a></td>");


       }
             out.println("</tr>");
out.println("</table><br/>");
     out.println("    <form action =\"Addproduct.jsp\">\n" +
"            <button type=\"input\"> Add to inventory </button>\n" +
"        </form>");
        }
        catch(Exception e)
        {
            System.out.print(e);
}
        }    
    }  
        


