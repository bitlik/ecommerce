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
public class registrationtest {
    public static void main (String[] args)throws Exception{
       System.setProperty("webdriver.firefox.marionette","C:\\geckodriver.exe");
       WebDriver driver = new FirefoxDriver();
driver.get("http://localhost:8080");
driver.manage().window().maximize();
driver.findElement(By.linkText("Log in")).click();
driver.findElement(By.linkText("New User")).click();

driver.findElement(By.name("uname")).sendKeys("Some Joe");
driver.findElement(By.name("Phone_number")).sendKeys("998887776");
driver.findElement(By.name("Address")).sendKeys("Where do I drop you ?");
driver.findElement(By.name("uname")).sendKeys("No spam, I swear!!");
driver.findElement(By.name("psw")).sendKeys("reema");
driver.findElement(By.name("psw")).sendKeys("Pashword");
Thread.sleep(1000);
driver.findElement(By.xpath("/html/body/div[2]/div[2]/form/div[2]/button")).click();
driver.navigate().back();
        
 String url = driver.getCurrentUrl();
 
if( url.equals("http://localhost:8080/#news")){
    System.out.println("Registration Test-Successful");
}
else
{
    System.out.println("Registration Test-Fail");
}

   }
    
}
