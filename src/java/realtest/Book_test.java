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
public class Book_test {

    public static void main(String[] args) throws Exception {
        System.setProperty("webdriver.firefox.marionette", "C:\\geckodriver.exe");
        WebDriver driver = new FirefoxDriver();
        driver.get("http://localhost:8080");
        driver.manage().window().maximize();
        driver.findElement(By.xpath("//*[@id=\"button2\"]/button")).click();
        driver.findElement(By.linkText("Fiction")).click();
        driver.navigate().back();

        driver.findElement(By.xpath("//*[@id=\"button2\"]/button")).click();
        driver.findElement(By.linkText("Non-Fiction")).click();
        driver.navigate().back();
        Thread.sleep(1000);
        driver.findElement(By.xpath("//*[@id=\"button2\"]/button")).click();
        driver.findElement(By.linkText("Knowledge")).click();

        Thread.sleep(2000);

        driver.manage().window().maximize();
        String url = driver.getCurrentUrl();

        if (url == ("http://localhost:8080/Knowledge.jsp")) {
            System.out.println("Book test- Successful ");
        } else {
            System.out.println("Book test Unsuccessful ");
        }
    }

}
