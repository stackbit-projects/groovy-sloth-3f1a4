#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://widget.stackbit.com/init.js 6183f1a4f598f100bd5e4f43

echo "stackbit-build.sh: finished build"
