/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecom;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ezjosbh
 */
public class uval extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String n1=request.getParameter("uname");
String n2=request.getParameter("psw");
Connection con = null;
int swict;
response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    HttpSession session = request.getSession();
    String a=request.getParameter("c2");
    out.println();
try{ 
Class.forName("com.mysql.jdbc.Driver"); 
con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ec","root","admin"); 

if(a.equals("customer")){
    swict=1;
}
else{
    swict=2;
}
out.println(swict);
switch(swict){
    case 1:
         PreparedStatement statement = con.prepareStatement("select uname, pwd from user_info where uname =? and pwd=?");
            statement.setString(1, n1);
            statement.setString(2, n2);
            ResultSet result = statement.executeQuery();
            if(result.next()){
                session.setAttribute("n1", n1);
                out.println(n1);
               response.sendRedirect("afterlogin.jsp");
                
            }else{
                out.println("username and password are incorrect");
            }
            break;
    
    case 2:
        out.println("inside seller case");
        PreparedStatement statement2 = con.prepareStatement("select sname, spwd from seller_info where sname =? and spwd=?");
            statement2.setString(1, n1);
            statement2.setString(2, n2);
            ResultSet result1 = statement2.executeQuery();
            if(result1.next()){
                out.println("inside if seller");
                session.setAttribute("n1", n1);
                response.sendRedirect("seller");
                
            }else{
                out.println("username and password are incorrect");
            }
            break;
    default:
        out.println("please select a valed choice");
        
}/*
 if(a.equals("customer"))
 {
         PreparedStatement statement = con.prepareStatement("select uname, pwd from user_info where uname =? and pwd=?");
            statement.setString(1, n1);
            statement.setString(2, n2);
            ResultSet result = statement.executeQuery();
            if(result.next()){
                session.setAttribute("n1", n1);
                
                response.sendRedirect("index.jsp");
                
            }else{
                out.println("username and password are incorrect");
            }
 }
 out.println("hello");
 if(a.equals("seller"))
 {
      PreparedStatement statement2 = con.prepareStatement("select sname, spwd from seller_info where uname =? and pwd=?");
            statement2.setString(1, n1);
            statement2.setString(2, n2);
            ResultSet result1 = statement2.executeQuery();
            if(result1.next()){
                session.setAttribute("n1", n1);
                

           
       // RequestDispatcher rd=request.getRequestDispatcher("seller");  
         //   rd.forward(request, response); 
                
            }else{
                out.println("username and password are incorrect");
            }
 
 }*/

      con.close();
       }catch(Exception e)
       {
            System.out.println("DB related Error");
            e.printStackTrace();
        }   
    }

    
}
