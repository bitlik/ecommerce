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
public class tab_test {

    public static void main(String[] args) throws Exception {
        System.setProperty("webdriver.firefox.marionette", "C:\\geckodriver.exe");
        WebDriver driver = new FirefoxDriver();
        driver.get("http://localhost:8080");
        driver.findElement(By.id("myTopnav"));
        driver.findElement(By.linkText("About")).click();
        Thread.sleep(2000);
        driver.navigate().back();

        driver.findElement(By.id("myTopnav"));
        driver.findElement(By.linkText("Contact us")).click();
        Thread.sleep(2000);
        driver.navigate().back();

        driver.findElement(By.id("myTopnav"));
        driver.findElement(By.linkText("Log in")).click();
        driver.findElement(By.name("uname")).sendKeys("reema");
        driver.findElement(By.name("psw")).sendKeys("reema");
        driver.findElement(By.xpath("//*[@id=\"id01\"]/form/div[2]/button")).submit();
        Thread.sleep(2000);
        driver.navigate().back();

        driver.findElement(By.id("myTopnav"));
        driver.findElement(By.linkText("Sell here")).click();
        Thread.sleep(2000);
        driver.navigate().back();
        driver.navigate().refresh();
        String url = driver.getCurrentUrl();
        if (url.equals("http://localhost:8080/#news")) {
            System.out.println("Tab test- Successful ");
        } else {
            System.out.println("Tab test- Unsuccessful ");
        }
        driver.close();
    }

}
