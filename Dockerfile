FROM node:12.2.0-alpine
FROM ubuntu
RUN apt-get install apache2 -y
WORKDIR app
RUN npm install
RUN npm run test
COPY . /var/www/html/
CMD ["node","app.js"]
ENTRYPOINT apachectl -D FOREGROUND
