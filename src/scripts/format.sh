#!/usr/bin/env bash

set -o nounset # no uninitialized variables
set -o errexit # exit on any error
set -o pipefail # exit on any error in a pipe

"$CC_TEST_REPORTER_PATH"/cc-test-reporter format-coverage \
    \ # shellcheck disable=SC2046 # Intentionally splitting ADDITIONAL_FLAGS
    $ADDITIONAL_FLAGS \
    "$COVERAGE_FILE" \
    --input-type "$INPUT_TYPE" \
    --output "$OUTPUT_FILE"