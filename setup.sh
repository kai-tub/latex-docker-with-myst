#!/bin/sh

set -e

echo "==> Install system packages"
apk --no-cache add \
    npm

echo "==> Install MySTjs tools"
npm install -g \
    myst-cli \
    jtex

echo "==> Checking MySTjs tool versions"
myst --version
jtex --version

# FUTURE: Minimize with multi-stage builds
