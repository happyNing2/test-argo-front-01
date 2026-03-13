# react-action.yml에도 build하는 부분 있어서 중복 build하는 부분 주석 처리
# 나중에 자기가 편한 것 쓰면 됨

# Step 1: Build React app
# FROM node:22-alpine AS build
# WORKDIR /app
# COPY package.json package-lock.json ./
# RUN npm install
# . 현재 디렉터리(ex07플젝) . /app에 복사
# COPY . .
# RUN npm run build


# Step 2: Serve with Nginx
FROM nginx:alpine
# COPY --from=build /app/build /usr/share/nginx/html
COPY build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]