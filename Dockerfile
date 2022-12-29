FROM node:18.0-alpine3.14
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
RUN npm install
COPY . .
ENV API_URL=http://api.myapp.com
EXPOSE 3000
