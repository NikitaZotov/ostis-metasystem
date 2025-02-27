#!/usr/bin/env bash
set -eo pipefail

if [[ -z "${BINARY_PATH}" || -z "${BUILD_PATH}" || -z "${SC_MACHINE_PATH}" ]];
then
  source "$(cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd)/../set_vars.sh"
fi

(cd "${BUILD_PATH}" && ctest -C Debug -V -R 'starter' --timeout 30)
