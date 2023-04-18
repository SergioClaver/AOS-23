FROM node:latest

WORKDIR /app
COPY openapi/api.yaml .

RUN npm install @openapitools/openapi-generator-cli -g

RUN openapi-generator-cli generate -i api.yaml -g javascript -o client

EXPOSE 8080

CMD ["node", "client/index.js"]