FROM mysql:8.0.43-debian

ENV MYSQL_ROOT_PASSWORD=ExpenseApp@1 \
    MYSQL_USER=expense \
    MYSQL_PASSWORD=ExpenseApp@1 \
    MYSQL_DATABASE=transactions

COPY scripts/*.sql /docker-entrypoint-initdb.d/
COPY my.cnf /etc/mysql/conf.d/
