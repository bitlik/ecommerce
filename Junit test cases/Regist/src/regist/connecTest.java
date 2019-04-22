/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package regist;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author ezgupha
 */
public class connecTest {
    
    public  String Connect(){
        String s;
        Connection con=null;
        try{
            
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ec", "root", "");
        s="FAIL";
        }
        catch(Exception e){
            out.println(e);
             s="Success";
        }
        return s;
        }

}

