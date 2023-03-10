#!/bin/bash

remote=$1
scriptdir="$( dirname -- "$BASH_SOURCE"; )"

rsync -avb \
    --exclude '*.md' \
    --exclude '*.sh' \
    --exclude '.git' \
    --include '*.html' \
    --include '*.css' \
    --include '*.js' \
    --include 'figures/*' \
    scriptdir/* \
    remote