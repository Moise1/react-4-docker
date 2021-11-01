FROM node:14.16.0-alpine3.13
RUN addgroup coder && adduser -S -G coder coder
RUN mkdir /app && chown coder:coder /app
USER coder
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
ENV API_URL=https://api.com
EXPOSE 3000
CMD ["npm", "start"]
