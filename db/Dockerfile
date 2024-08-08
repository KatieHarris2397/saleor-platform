#FROM library/postgres:15-alpine
FROM katieharris/saleor-db:v0.02

RUN rm -rf /var/lib/postgresql/data
RUN mv /var/lib/postgresql/cpd-data /var/lib/postgresql/data

COPY replica_user.sql /docker-entrypoint-initdb.d/replica_user.sql