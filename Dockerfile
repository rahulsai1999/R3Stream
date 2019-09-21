FROM node:alpine
COPY ./package.json .
RUN npm i
COPY . .
CMD ["node","app.js"]