CREATE DATABASE IF NOT EXISTS transactions;
USE transactions;

CREATE TABLE IF NOT EXISTS transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    amount INT,
    description VARCHAR(255)
);

-- Create the user with default authentication plugin (MySQL 8+ uses caching_sha2_password)
CREATE USER IF NOT EXISTS 'expense'@'%' 
  IDENTIFIED BY 'ExpenseApp@1';

GRANT ALL PRIVILEGES ON transactions.* TO 'expense'@'%';

FLUSH PRIVILEGES;