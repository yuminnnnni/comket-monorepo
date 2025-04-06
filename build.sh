#!/bin/sh
set -e  # 에러 발생 시 스크립트 중단

pnpm install

# Install Nx explicitly if it's not installed
pnpm add -D nx

# Check if Nx is correctly installed
echo "NX PATH: $(which nx)"

# If Nx is not found, use the manual path
export NX_PATH="./node_modules/.bin/nx"

# Run the build command with Nx
$NX_PATH build frontend --no-cloud

# 디버깅용 출력
echo "✅ 빌드 결과 디렉토리 (dist/apps/frontend):"
ls -al dist/apps/frontend
