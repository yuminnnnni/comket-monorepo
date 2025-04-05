#!/bin/sh
set -e  # 에러 발생 시 스크립트 중단

pnpm install
pnpm exec nx build frontend --no-cloud

# 디버깅용 출력
echo "✅ 빌드 결과 디렉토리 (dist/apps/frontend):"
ls -al dist/apps/frontend
