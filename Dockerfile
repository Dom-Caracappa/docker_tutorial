FROM node:12-alpine
# Adding build tools to make yarn install work on Apple silicon and AMD64
RUN apk add --no-cache python g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]

