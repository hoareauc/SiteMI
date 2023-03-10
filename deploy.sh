#!/bin/bash

remote=$1
scriptdir="$( dirname -- "$0"; )"

rsync -avb \
    --exclude '*.md' \
    --exclude '*.sh' \
    --exclude '.git' \
    --include '*.html' \
    --include '*.css' \
    --include '*.js' \
    --include 'figures/*' \
    $scriptdir/* \
    remote