/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package regist;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;

import static org.junit.Assert.*;
import org.junit.Test;



/**
 *
 * @author ezgupha
 */
public class RegistTest {
    
    public RegistTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of main method, of class Regist.
     */
    @Test
    public void testMain() {

        Regist reg_test = new Regist();
		//assertEquals(1, reg_test.accept_reg("harsh1", "harshasd"));
        assertEquals(1, reg_test.usr_num("harsh"));
    }
    
}
