# Example of [Sybok](https://github.com/alopukhov/sybok) usage

Download dependencies and copy scripts 
```bash
./gradlew installDist
```
Navigate to `build/install/sybok-example`

You can play with scripts execution using `run-tests` script
E.g. run all specs
```bash
./run-tests.sh
```
or run single file
```bash
./run-tests.sh -f tests/spock/SpockSpec.groovy
```

Experiment with adding specs
Or just run individual spec with wrong feature. Fix it inplace. And rerun:
```bash
./run-tests.sh -f tests/spock/SpockSpec.groovy
sed -Ei "s/(.*)(2 \* 2 == 5)(.*)/\12 * 2 == 4\3/g" tests/spock/SpockSpec.groovy
./run-tests.sh -f tests/spock/SpockSpec.groovy
```