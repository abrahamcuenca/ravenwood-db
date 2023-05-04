FROM postgres:15.2-alpine
ENV POSTGRES_PASSWORD ${POSTGRES_PASSWORD}
ENV POSTGRES_USER ${POSTGRES_USER}
ENV POSTGRES_DB ${POSTGRES_DB}
COPY ./sql/create_tables.sql /docker-entrypoint-initdb.d/
