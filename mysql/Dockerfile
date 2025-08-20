FROM mysql:8.4

# Set up environment variables for MySQL init
ENV MYSQL_ROOT_PASSWORD=ExpenseApp@1 \
    MYSQL_USER=expense \
    MYSQL_PASSWORD=ExpenseApp@1 \
    MYSQL_DATABASE=transactions

# Copy your initialization scripts
COPY scripts/*.sql /docker-entrypoint-initdb.d/
