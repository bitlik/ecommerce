/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package regist;

/**
 *
 * @author ezgupha
 */
public class Regist {

	public long accept_reg(String username, String password) {
		// TODO Auto-generated method stub
		int pwd_length;
		pwd_length = password.length();
                int usr_length=username.length();
		if(pwd_length < 6 && usr_length<10)
			return 0;	
		else
			return 1;
	}
	
	public long phone_number(String phonenumber) {
		if (phonenumber.length() < 10 && phonenumber.length() > 0){
			return 0;
		}
		else
			return 1;
	}
	
	public long field_test(String username,String password,String name,String phno,String address) {
		if((username.length() < 1) || (password.length() < 1) || (name.length() < 1) || phno.length() < 1 || address.length() < 1 ) {
			return 0;
		}
		else
			return 1;
	}
        
        public long usr_num(String username){
            if( username.matches(".*\\d.*"))
			return 0;	
		else
			return 1;
        }
    }
