/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package regist;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ezgupha
 */
public class cardD {
    public long cvv(String number) {
		if (number.length()==3){
			return 0;
		}
		else
			return 1;
	}
    
    public long card_name(String name){
            if( name.matches(".*\\d.*"))
			return 0;	
		else
			return 1;
        }
    public long exp_date(String strdate) {
        try {
            // strdate2 = "02-04-2013 11:35:42";
            Date date = new Date();
            
            SimpleDateFormat dateFormat = new SimpleDateFormat("MM/yyyy");
            
            Date newdate = dateFormat.parse(strdate);
            
            if(newdate.after(date)){
                return 0;
            }
            else{
                return 1;
            }   
        } catch (ParseException ex) {
            Logger.getLogger(cardD.class.getName()).log(Level.SEVERE, null, ex);
            return 4;
        }
    }
