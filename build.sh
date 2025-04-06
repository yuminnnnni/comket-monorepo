#!/bin/sh
set -e  # 에러 발생 시 스크립트 중단

pnpm install

# 디버깅: Nx가 설치되어 있는지, 경로는 어디인지 확인
echo "🔍 Nx 버전 확인:"
./node_modules/.bin/nx --version || echo "❌ Nx 실행 실패"

echo "🔍 Nx 경로 확인:"
ls -al ./node_modules/.bin/nx || echo "❌ Nx 경로에 파일 없음"

# Nx 명령어를 명시적인 경로로 실행
./node_modules/.bin/nx build frontend --no-cloud

# 디버깅용 출력
echo "✅ 빌드 결과 디렉토리 (dist/apps/frontend):"
ls -al dist/apps/frontend
