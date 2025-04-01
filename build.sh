#!/bin/sh
pnpm install
pnpm exec nx build frontend
mkdir -p output
cp -r dist/apps/frontend/* output/
