#!/bin/bash
[ ! -f package-lock.json ] || [ -d node_modules ] || { echo '' | npm ci --prefer-offline; } 
{ set -x; "$@"; set +x; }