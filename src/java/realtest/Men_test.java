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
public class Men_test {
    public static void main(String[] args) throws Exception {
        System.setProperty("webdriver.firefox.marionette", "C:\\geckodriver.exe");
        WebDriver driver = new FirefoxDriver();
        driver.get("http://localhost:8080");
        driver.manage().window().maximize();
        driver.findElement(By.xpath("//*[@id=\"button3\"]/button")).click();
        driver.findElement(By.linkText("Topwear")).click();
        Thread.sleep(1500);
        driver.navigate().back();

        driver.findElement(By.xpath("//*[@id=\"button3\"]/button")).click();
        driver.findElement(By.linkText("Lower wear")).click();
        Thread.sleep(1000);
        driver.navigate().back();       

        driver.findElement(By.xpath("//*[@id=\"button3\"]/button")).click();
        driver.findElement(By.linkText("Accessories")).click();
         Thread.sleep(2000);
        driver.navigate().back();       

        driver.manage().window().maximize();
        String url = driver.getCurrentUrl();
        
        if (url.equals("http://localhost:8080/")) {
            System.out.println("Men check test -Successful ");
        } else {
            System.out.println("Men check test -Unsuccessful");
        }

        driver.close();
    }

       
    
}
