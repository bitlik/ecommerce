/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package realtest;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

/**
 *
 * @author ezparjy
 */
public class title {

    public static void main(String[] args) {
        System.setProperty("webdriver.firefox.marionette", "C:\\geckodriver.exe");
        WebDriver driver = new FirefoxDriver();
        String appUrl = "http://localhost:8080";
        driver.get(appUrl);
        driver.manage().window().maximize();
        String expectedTitle = "Home Page";
        String actualTitle = driver.getTitle();
        if (expectedTitle.equals(actualTitle)) {
            System.out.println("Verification Successful - The correct title is displayed on the web page.");
        } else {
            System.out.println("Verification Failed - An incorrect title is displayed on the web page.");
        }
    }
}
