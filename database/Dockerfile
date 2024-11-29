FROM postgres:14.15-alpine3.20

LABEL maintainer="joigfema@gmail.com"

ARG POSTGRES_DB=mydb
ARG POSTGRES_USER=postgres
ARG POSTGRES_PASSWORD=postgres

ENV POSTGRES_DB=${POSTGRES_DB}
ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}

RUN mkdir -p /docker-entrypoint-initdb.d \
    mkdir -p /migrations \
    mkdir -p /seeders

COPY migrations/ /migrations/
COPY seeders/ /seeders/
COPY init-scripts/ /docker-entrypoint-initdb.d/

COPY init-database.sh /docker-entrypoint-initdb.d/init-database.sh
RUN chmod +x /docker-entrypoint-initdb.d/init-database.sh