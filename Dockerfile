FROM node:12.2.0-alpine
FROM ubuntu
WORKDIR app
RUN npm install
RUN npm run test
RUN apt-get install apache2 -y
COPY . /var/www/html/
CMD ["node","app.js"]
ENTRYPOINT apachectl -D FOREGROUND
