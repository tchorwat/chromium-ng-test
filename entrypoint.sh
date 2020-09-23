#!/bin/bash
[ ! -f package-lock.json ] || [ -d node_modules ] || { echo 'n' | npm ci --prefer-offline; } 
{ set -x; "$@"; set +x; }