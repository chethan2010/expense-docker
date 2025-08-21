FROM mysql:8.4

# Set MySQL environment variables
ENV MYSQL_ROOT_PASSWORD=ExpenseApp@1 \
    MYSQL_USER=expense \
    MYSQL_PASSWORD=ExpenseApp@1 \
    MYSQL_DATABASE=transactions

# Copy all SQL scripts into the MySQL initialization directory
COPY scripts/*.sql /docker-entrypoint-initdb.d/
