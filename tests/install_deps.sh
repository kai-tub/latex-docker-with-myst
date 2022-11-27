#!/bin/sh

set -e

echo "==> Install dependecies to run tests!"
tlmgr install \
    datetime \
    fmtcount
