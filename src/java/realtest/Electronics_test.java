/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package realtest;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

/**
 *
 * @author ezparjy
 */
public class Electronics_test {
    public static void main(String[] args) throws Exception{
       System.setProperty("webdriver.firefox.marionette","C:\\geckodriver.exe");
       WebDriver driver = new FirefoxDriver();
       driver.get("http://localhost:8080");
       driver.manage().window().maximize();
       driver.findElement(By.xpath("//*[@id=\"button1\"]/button")).click();
       driver.findElement(By.linkText("Mobiles")).click();
       Thread.sleep(2000);
       driver.navigate().back();
       
       driver.findElement(By.xpath("//*[@id=\"button1\"]/button")).click();
       driver.findElement(By.linkText("Laptops")).click();
       Thread.sleep(2000);
       driver.navigate().back();
       
       driver.findElement(By.xpath("//*[@id=\"button1\"]/button")).click();
       driver.findElement(By.linkText("Speakers")).click();      
       Thread.sleep(2000);
       
       driver.manage().window().maximize();
       String url = driver.getCurrentUrl();

       if (url.equals("http://localhost:8080/Speakers.jsp")){
       System.out.println("Electronics test- Successful");
       }
       else {
       System.out.println("Electronics check test- Unsuccessful ");
       }

       driver.close();
        
    }
   
}
