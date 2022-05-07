package spock.guava

import spock.lang.Specification

class GuavaSpec extends Specification{
    def "Yet another feature"() {
        expect:
        GuavaHelper.instance.joinInts(1, 2, 3) == "1-2-3"
    }
}
