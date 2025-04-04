#!/bin/sh
set -e  # 에러 발생 시 스크립트 중단

pnpm install
pnpm exec nx build frontend

# 빌드가 성공했을 경우에만 아래 명령 실행됨
rm -rf output
mkdir -p output
cp -r dist/apps/frontend/* dist/apps/frontend/.* output/ 2>/dev/null || true

# 디버깅용 (CI에서 확인 가능)
echo "✅ output 디렉토리 내용:"
ls -al output
