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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ezjosbh
 */
public class addcart extends HttpServlet {

 

/**
 *
 * @author ezjosbh
 */


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
         response.setContentType("text/html");
        
    PrintWriter out = response.getWriter();
 HttpSession session = request.getSession();

   
                try
                {
                     Connection con=null; 
                     Class.forName("com.mysql.jdbc.Driver");
                     con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ec","root","admin");
           String name=(String)session.getAttribute("uname");
  String pname=request.getParameter("id");
  String price=request.getParameter("price");
  //out.println(price);
           
                    
                     PreparedStatement ps=null;   
             ps=con.prepareStatement("insert into cart values(?,?,?)"); 
ps.setString(1,name );
ps.setString(2, pname);
ps.setString(3, price);
 int i=ps.executeUpdate();
 out.println(i);
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



   


