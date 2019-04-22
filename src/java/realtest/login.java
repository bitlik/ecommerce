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
public class login {
    public static void main (String[] args) throws Exception{
        System.setProperty("webdriver.firefox.marionette","C:\\geckodriver.exe");
        WebDriver driver = new FirefoxDriver();
        driver.get("http://localhost:8080");
        driver.manage().window().maximize();
        driver.findElement(By.linkText("Log in")).click();
//driver.findElements(By.tagName("a")).click();
        driver.findElement(By.name("uname")).sendKeys("reema");
        driver.findElement(By.name("psw")).sendKeys("reema");
        Thread.sleep(1000);
        driver.findElement(By.xpath("//*[@id=\"id01\"]/form/div[2]/button")).submit();
        driver.manage().window().maximize();
        driver.navigate().back();
        String url = driver.getCurrentUrl();
        
        if (url.equals("http://localhost:8080/#news")){
            System.out.println("Admin Login test- Successful ");
        }
        else {
            System.out.println("Admin Login test-Unsuccessful ");
        }
        driver.close();
    }
    
    
}
