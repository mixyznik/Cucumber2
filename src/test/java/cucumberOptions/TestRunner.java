package cucumberOptions;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features="src/test/java/features",
        glue="stepDefination", tags="@SmokeTest",
        plugin={"pretty", "html:target/reports1.html", "junit:target/cukes.xml"}
)
public class TestRunner {
}
