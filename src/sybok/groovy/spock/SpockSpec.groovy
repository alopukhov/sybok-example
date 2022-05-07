package spock

import spock.lang.*

class SpockSpec extends Specification {
    def "Simple math test"() {
        expect:
        2 * 2 == 4
    }

    def "Wrong math test"() {
        expect:
        2 * 2 == 5
    }

    def "Multiply using groovy Category"() {
        expect:
        use(MultiplyHelperCategory) {
            2.multiplyByTwo() == 4
        }
    }
}
