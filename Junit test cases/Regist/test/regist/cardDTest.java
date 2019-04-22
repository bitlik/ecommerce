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
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author ezgupha
 */
public class cardDTest {
    
    public cardDTest() {
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
     * Test of cvv method, of class cardD.
     */
    @Test
    public void testCvv() {
        System.out.println("cvv");
        String number = "12-2017";
        cardD instance = new cardD();
        long expResult = 0L;
        long result = instance.cvv(number);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of card_name method, of class cardD.
     */
    @Test
    public void testCard_name() {
        System.out.println("card_name");
        String name = "";
        cardD instance = new cardD();
        long expResult = 0L;
        long result = instance.card_name(name);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of exp_date method, of class cardD.
     */
    @Test
    public void testExp_date() {
        System.out.println("exp_date");
        String strdate = "";
        cardD instance = new cardD();
        long expResult = 0L;
        long result = instance.exp_date(strdate);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
