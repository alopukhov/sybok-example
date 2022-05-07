package spock.acme

import com.acme.PrecompiledHelper
import spock.lang.Specification

class CompiledHelperUsageSpec extends Specification {
    def "Multiply with helper"() {
        expect:
        PrecompiledHelper.multiply(2, 2) == 4
    }
}
