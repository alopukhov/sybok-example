#!/bin/bash

# https://stackoverflow.com/questions/59895/
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

command="${SCRIPT_DIR}/bin/run-junit-console"
declare -a common_args=()
common_args+=("--config" "sybok.script-roots=${SCRIPT_DIR}/tests")
common_args+=("-e" "sybok-engine")
common_args+=("--disable-banner")
common_args+=("-n" ".*Spec")
common_args+=("-n" ".*Test")

if (( $# == 0)) ; then
  exec "${command}" "${common_args[@]}" -d "${SCRIPT_DIR}/tests"
else
  exec "${command}" "${common_args[@]}" "$@"
fi