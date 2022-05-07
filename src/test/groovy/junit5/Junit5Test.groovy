package junit5

import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test

class Junit5Test {
    @Test
    void helloJunit5() {
        println "Hi, junit 5!"
    }

    @Test
    void failing() {
        Assertions.fail("this test failing in junit5")
    }
}
