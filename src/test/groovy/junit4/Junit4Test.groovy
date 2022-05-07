package junit4

import org.junit.Test
import org.junit.jupiter.api.Assertions

class Junit4Test {
    @Test
    void helloJunit4() {
        println "Hi, junit 4!"
    }

    @Test
    void failing() {
        Assertions.fail("this test failing in junit4")
    }

}
