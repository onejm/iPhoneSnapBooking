# Node.js 환경 설정
FROM node:16

# 작업 디렉토리 설정
WORKDIR /app

# 소스 코드 복사
COPY ./ /app

# 의존성 설치
RUN npm install

# 빌드 실행
RUN npm run build

# 포트 설정
EXPOSE 3000

# 애플리케이션 실행
CMD ["npm", "run", "serve"]
