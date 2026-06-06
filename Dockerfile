FROM node:18-alpine3.17

WORKDIR /usr/app

# 1. نسخ ملفات الـ package للمسار الحالي المظبوط
COPY package*.json ./

# 2. عمل install قبل نسخ بقية الكود للاستفادة من الـ Cache
RUN npm install

# 3. نسخ بقية ملفات المشروع
COPY . .

ENV MONGO_USERNAME=superuser
ENV MONGO_PASSWORD=SuperPassword

EXPOSE 3000

CMD [ "npm", "start" ]