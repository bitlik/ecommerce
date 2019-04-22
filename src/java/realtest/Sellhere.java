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
public class Sellhere {

    public static void main(String[] args) throws Exception {
        System.setProperty("webdriver.firefox.marionette", "C:\\geckodriver.exe");
        WebDriver driver = new FirefoxDriver();
        driver.get("http://localhost:8080");
        driver.manage().window().maximize();
        driver.findElement(By.linkText("Sell here")).click();
        driver.findElement(By.name("uname")).sendKeys("reema");
        driver.findElement(By.name("psw")).sendKeys("jyoti");
        Thread.sleep(1200);
        driver.findElement(By.xpath("/html/body/div[3]/form[1]/div[2]/button")).submit();
        driver.navigate().back();
        String url = driver.getCurrentUrl();

        if (url.equals("http://localhost:8080/Seller.jsp?uname=reema&psw=jyoti")) {
            System.out.println("Sell here test- Successful ");
        } else {
            System.out.println("Sell here test-Unsuccessful ");
        }
        driver.close();
    }

}
