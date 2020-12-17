#!/usr/bin/env bash
set -e
echo "TODO: Make Binaries"

mkdir binary-releases
echo '' > dist/STANDALONE
npx pkg . -t node14-alpine-x64 -o binary-releases/mod-cli-spike-alpine
npx pkg . -t node12-linux-x64 -o binary-releases/mod-cli-spike-linux
npx pkg . -t node12-macos-x64 -o binary-releases/mod-cli-spike-macos
npx pkg . -t node12-win-x64 -o binary-releases/mod-cli-spike-win.exe
# TODO: build docker release
# TODO: sign win binary
# TODO: shasum for win?
shasum -a 256 binary-releases/mod-cli-spike-linux > binary-releases/mod-cli-spike-linux.sha256
shasum -a 256 binary-releases/mod-cli-spike-macos > binary-releases/mod-cli-spike-macos.sha256
shasum -a 256 binary-releases/mod-cli-spike-alpine > binary-releases/mod-cli-spike-alpine.sha256
