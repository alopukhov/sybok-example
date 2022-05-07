# Example of [Sybok](https://github.com/alopukhov/sybok) usage

Install with
```bash
./gradlew installDist
```
Navigate to `build/install/sybok-example`

You can play with scripts execution using `run-tests` script
E.g. run all specs
```bash
./run-tests.sh -d specs
```
or run single file
```bash
./run-tests.sh -f specs/spock/guava/GuavaSpec.groovy
```

Experiment with adding specs
Or just run individual spec with wrong feature. Fix it inplace. And rerun:
```bash
./run-tests.sh -f specs/spock/acme/AcmeSpec.groovy
sed -Ei "s/(.*)(2 \* 2 == 5)(.*)/\12 * 2 == 4\3/g" specs/spock/acme/AcmeSpec.groovy
./run-tests.sh -f specs/spock/acme/AcmeSpec.groovy
```