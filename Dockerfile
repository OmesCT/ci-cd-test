FROM node:18-alpine
WORKDIR /app
COPY . .
# รัน npm install ถ้ามี package.json ไม่งั้นให้ข้ามไป
RUN if [ -f package.json ]; then npm install; fi
CMD ["echo", "App is running!"]
