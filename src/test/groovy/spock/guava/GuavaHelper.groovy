package spock.guava

import com.google.common.primitives.Ints

@Singleton
class GuavaHelper {
    def joinInts(int... args) {
        Ints.join("-", args)
    }
}
