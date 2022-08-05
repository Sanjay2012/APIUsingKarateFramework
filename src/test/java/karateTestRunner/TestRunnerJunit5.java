package karateTestRunner;

import com.intuit.karate.junit5.Karate;

public class TestRunnerJunit5 {
    @Karate.Test
    Karate testSample() {
        return Karate.run("./src/test/java/karateFeatures/Sample").relativeTo(getClass());
    }

    @Karate.Test
    Karate testGit() {
        return Karate.run("./src/test/java/karateFeatures/GitRepository").relativeTo(getClass());
    }

    @Karate.Test
    Karate readSimpleJson() {
        return Karate.run("./src/test/java/karateFeatures/ReadJson").relativeTo(getClass());
    }

    @Karate.Test
    Karate ReadComplexJson() {
        return Karate.run("./src/test/java/karateFeatures/ReadComplexJson   GetUsersWithQueryParam").relativeTo(getClass());
    }

    @Karate.Test
    Karate pathParam() {
        return Karate.run("./src/test/java/karateFeatures/GetUsersWithPathParam").relativeTo(getClass());
    }

    @Karate.Test
    Karate queryParam() {
        return Karate.run("./src/test/java/karateFeatures/GetUsersWithQueryParam").relativeTo(getClass());
    }

    @Karate.Test
    Karate getUsers() {
        return Karate.run("./src/test/java/karateFeatures/GETRestAPITest").relativeTo(getClass());
    }
}
