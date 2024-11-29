FROM node:alpine3.20
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY . .

HEALTHCHECK --interval=10s \
            --timeout=5s \
            --start-period=10s \
            --retries=3 \
            CMD wget -qO- http://localhost:3000/ping || exit 1

EXPOSE 3000
CMD ["yarn", "dev"]
