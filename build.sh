#!/bin/sh
pnpm install
pnpm exec nx build frontend
rm -rf output
mkdir -p output
cp -r dist/apps/frontend/* output/
