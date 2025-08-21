CREATE DATABASE IF NOT EXISTS transactions;
USE transactions;

CREATE TABLE IF NOT EXISTS transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    amount INT,
    description VARCHAR(255)
);

-- Create user with native password plugin
CREATE USER IF NOT EXISTS 'expense'@'%' 
  IDENTIFIED WITH mysql_native_password BY 'ExpenseApp@1';

GRANT ALL PRIVILEGES ON transactions.* TO 'expense'@'%';

FLUSH PRIVILEGES;