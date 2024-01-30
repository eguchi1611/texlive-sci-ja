#!/bin/bash

SAMPLE=${1:-basic}

curl -fsSL https://github.com/eguchi1611/texlive-ja/archive/HEAD.tar.gz | tar -x --strip=3 */examples/devcontainer-${SAMPLE}