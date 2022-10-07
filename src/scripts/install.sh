#!/usr/bin/env bash

set -o nounset # no uninitialized variables
set -o errexit # exit on any error
set -o pipefail # exit on any error in a pipe

if [[ $EUID == 0 ]]; then export SUDO=""; else # check that we are root
    export SUDO="sudo"; # if not, use sudo
fi
if [[ $(command -v cc-test-reporter) == "" ]]; then
    $SUDO mkdir -p "$CC_TEST_REPORTER_PATH"
    $SUDO test -f "$CC_TEST_REPORTER_PATH"/cc-test-reporter \
        || $SUDO curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-"$VERSION"-"$ARCHITECTURE" \
        "$CC_TEST_REPORTER_PATH"/cc-test-reporter
    $SUDO chmod +x "$CC_TEST_REPORTER_PATH"/cc-test-reporter
else
    echo "Test reporter is already installed."
fi