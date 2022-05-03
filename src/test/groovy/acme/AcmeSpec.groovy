package acme

import spock.lang.*

class AcmeSpec extends Specification {
    def "Simple math test"() {
        expect:
        2 * 2 == 4
    }

    def "Wrong math test"() {
        expect:
        2 * 2 == 5
    }
}
