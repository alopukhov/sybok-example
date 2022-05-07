#!/bin/bash

# https://stackoverflow.com/questions/59895/
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

"${SCRIPT_DIR}/bin/run-launcher" \
--config "sybok.script-roots=${SCRIPT_DIR}/specs" \
-e sybok-engine \
--disable-banner \
-n ".*Spec" \
-n ".*Test" \
"$@"