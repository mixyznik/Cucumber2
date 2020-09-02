package stepDefination;

import io.cucumber.java.After;
import io.cucumber.java.Before;

public class Hooks {

    @Before("@SmokeTest")
    public void beforevalidation() {
        System.out.println("Before Smoke Test");
    }

    @After("@SmokeTest")
    public void aftervalidation() {
        System.out.println("After Smoke Test");
    }
}
