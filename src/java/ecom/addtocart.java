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
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ezjosbh
 */
public class addtocart extends HttpServlet {

 

/**
 *
 * @author ezjosbh
 */


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
         response.setContentType("text/html");
        
    PrintWriter out = response.getWriter();
 HttpSession session = request.getSession();

   
   
 //  out.println("<h1>hello</h1> " +pname);
         
           
           
                try
                {
                     Connection con=null; 
                     Class.forName("com.mysql.jdbc.Driver");
                     con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ec","root","admin");
           String name=(String)session.getAttribute("n1");
  String pname=request.getParameter("id");
    session.setAttribute("name", name);
    out.println(pname);
   
                     Statement st=con.createStatement();
                     
                     //PreparedStatement ps=null; 
                    // ps=con.prepareStatement("select * from inventory"); 
//ps.setString(1,pname );
                // ps=con.prepareStatement("select * from inventory where pname=?"); 
                  //   ps.setString(1,pname);
                     //String query="select * from inventory where pname=?";
ResultSet res =st.executeQuery("select * from inventory where pname='"+pname+"'");

boolean c=res.next();
            // boolean a=res.next();
             out.println(c);
while(res.next())
 {
     
    int  price=res.getInt("price");
           
   //   out.println(+price);
     session.setAttribute("price", price);
     //response.sendRedirect("addcart.jsp");
   out.println("<th>product id</th><th>product name</th><th>Quantity</th><th>price</th><th>description</th><th>sid</th><th>sname</th><th>category</th><th>Options</th>");    
 
             
       
           out.println("  <tr>"); 
 out.println("<td>" +res.getInt(1));
out.println("</td>" );
out.print("<td>" +res.getString(2));
out.println("</td>");
out.print("<td>" +res.getInt(3));
out.println("</td>");
out.print("<td>" +res.getInt(4));
out.println("</td>");
out.print("<td>" +res.getString(5));
out.println("</td>");
out.print("<td>" +res.getInt(6) );
out.println("</td>");
out.print("<td>" +res.getString(7));
out.println("</td>");
out.print("<td>" +res.getString(8));
out.println("</td>");
 
 
 }
    
                }
                catch(Exception e)
                {
                    
                }
    }
}
