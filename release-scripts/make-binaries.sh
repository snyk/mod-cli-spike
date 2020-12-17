#!/usr/bin/env bash
set -e
echo "TODO: Make Binaries"

echo '' > dist/STANDALONE
npx pkg . -t node14-alpine-x64 -o mod-cli-spike-alpine
npx pkg . -t node12-linux-x64 -o mod-cli-spike-linux
npx pkg . -t node12-macos-x64 -o mod-cli-spike-macos
npx pkg . -t node12-win-x64 -o mod-cli-spike-win.exe
# TODO: build docker release
# TODO: sign win binary
# TODO: shasum for win?
shasum -a 256 mod-cli-spike-linux > mod-cli-spike-linux.sha256 && shasum -a 256 mod-cli-spike-macos > mod-cli-spike-macos.sha256 && shasum -a 256 mod-cli-spike-alpine > mod-cli-spike-alpine.sha256
ls -la
